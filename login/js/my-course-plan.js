document.addEventListener('DOMContentLoaded', function() {
    var eventData = {
        events : []
    };
    $.ajax({
        type: 'POST',
        url: '/coursePlan',
        data: {},
        datatype: 'json',
        success: function (response) {
            for (var i = 0; i < response.courseData.length; i++) {
                var event1 = {}, event2 = {}, event3 = {};
                event1['start'] = new Date(response.courseData[i]["session_start_time_1"]);
                event1['end'] = new Date(response.courseData[i]["session_end_time_1"]);
                event1['title'] = response.courseData[i]["course_id"];
                eventData.events.push(event1);

                event2['start'] = new Date(response.courseData[i]["session_start_time_2"]);
                event2['end'] = new Date(response.courseData[i]["session_end_time_2"]);
                event2['title'] = response.courseData[i]["course_id"];
                eventData.events.push(event2);

                event3['start'] = new Date(response.courseData[i]["session_start_time_3"]);
                event3['end'] = new Date(response.courseData[i]["session_end_time_3"]);
                event3['title'] = response.courseData[i]["course_id"];
                eventData.events.push(event3);
            }
            renderCalendar(eventData);

            $.ajax({
                type: 'POST',
                url: '/userInfo',
                success: function (response) {
                    document.getElementById("username").innerText = response.username;
                    document.getElementById("user-email").innerText = response.email;
                    document.getElementById("profile-name").innerText = response.username;
                    document.getElementById("user-sid").innerText = response.sid;
                }
            });
        }
    });
});

function renderCalendar(eventData) {
    $('#calendar').weekCalendar({
        timeslotsPerHour: 4,
        timeslotHeight: 20,
        hourLine: true,
        data: eventData,
        height: function($calendar) {
            return $(window).height() - $('h1').outerHeight(true);
        },
        eventRender : function(calEvent, $event) {
            if (calEvent.end.getTime() < new Date().getTime()) {
                $event.css('backgroundColor', '#aaa');
                $event.find('.time').css({'backgroundColor': '#999', 'border':'1px solid #888'});
            }
        },
        eventNew: function(calEvent, $event) {
            displayMessage('<strong>Added event</strong><br/>Start: ' + calEvent.start + '<br/>End: ' + calEvent.end);
            alert('You\'ve added a new event. You would capture this event, add the logic for creating a new event with your own fields, data and whatever backend persistence you require.');
        },
        eventDrop: function(calEvent, $event) {
            displayMessage('<strong>Moved Event</strong><br/>Start: ' + calEvent.start + '<br/>End: ' + calEvent.end);
        },
        eventResize: function(calEvent, $event) {
            displayMessage('<strong>Resized Event</strong><br/>Start: ' + calEvent.start + '<br/>End: ' + calEvent.end);
        },
        eventClick: function(calEvent, $event) {
            displayMessage('<strong>Clicked Event</strong><br/>Start: ' + calEvent.start + '<br/>End: ' + calEvent.end);
        },
        eventMouseover: function(calEvent, $event) {
            displayMessage('<strong>Mouseover Event</strong><br/>Start: ' + calEvent.start + '<br/>End: ' + calEvent.end);
        },
        eventMouseout: function(calEvent, $event) {
            displayMessage('<strong>Mouseout Event</strong><br/>Start: ' + calEvent.start + '<br/>End: ' + calEvent.end);
        },
        noEvents: function() {
            displayMessage('There are no events for this week');
        }
    });

    $('<div id="message" class="ui-corner-all"></div>').prependTo($('body'));
}