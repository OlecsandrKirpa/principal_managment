// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'jquery'

Rails.start()
// Turbolinks.start()
ActiveStorage.start()

// window.jQuery = $;
window.$ = $;

require("bootstrap")
// import "../stylesheets/application";
document.addEventListener("turbolinks:load", function () {
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
})

jQuery.fn.addSelect2 = function () {
    // console.log(o);
    let newElementLink = this.attr("new-element-link");
    let placeholder = this.attr("placeholder-select2");
    let ajaxRequestLlink = this.attr("link-request");
    let noResultMessage = this.attr("no-result-message");
    let selector = this.attr("select2-selector");



    console.log(`newElementLink=${newElementLink}, placeholder=${placeholder}, ajaxRequestLlink=${ajaxRequestLlink}, selector=${selector}`)
    this.select2({
        language: {
            noResults: function () {
                return `<a class="btn btn-primary btn-block" href="${newElementLink}"> ${noResultMessage} </a>`;
            }
        },
        escapeMarkup: function (markup) {
            return markup;
        },
        allowClear: false,
        multiple: false,
        placeholder: `${placeholder}`,
        ajax: {
            delay: 200,
            url: `${ajaxRequestLlink}`,
            dataType: "json",
            data: function (params) {
                var query = {
                    query: params.term,
                    per_page: 25
                }
                return query;
            },
            processResults: function (response) {
                var result = {
                    results: response.items.map(function (item) {
                        // console.log(item);

                        // buona pratica ??
                        let finalSelector = "";
                        selector.split(" ").forEach(element => {finalSelector += `${item[element]} `});
                        // console.log(`finalSelector: ${finalSelector}`);

                        return {
                            id: item.id,
                            text: `${finalSelector}`,
                        };
                    }),
                }

                return result;
            }
        },

    })
    // return this;
};

jQuery.fn.loadValueToRealInputOnChange = function () {
    let needValidation = $(this).attr("need-validation");

    let value;
    this.on("change input", function () {
        if (needValidation && $(this).val().length == 1) value = "0" + $(this).val();
        else {
            value = $(this).val()
        }
        console.log(`val: ${value}`)
        $('#' + $(this).attr("real-input-id")).val(value);
    })
}