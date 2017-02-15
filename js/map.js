jQuery(document).ready(function($) {
    "use strict";

    if (document.getElementById('contact_map')) {
        google.maps.event.addDomListener(window, 'load', contactusMap);
    }

    /* Contaact Map */
    var map;
    function contactusMap() {

        var myLatlng, mapOptions, marker; 
        var myLatlng = new google.maps.LatLng(-12.112002, -76.990138);

        mapOptions = {
            zoom: 16,
            center: myLatlng,
            scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        map = new google.maps.Map(document.getElementById('contact_map'), mapOptions);

        marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: 'Arwa'
        });
    }

});