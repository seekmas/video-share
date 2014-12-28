var app = new Framework7();

var $$ = Dom7;

var mainView = app.addView(
    '.view-main' , {
        dynamicNavbar: true
    }
);

//var anotherView = app.addView('another-view');



//app.alert('Impact between Framework7 and Rails4');

$$('#left-menu').on('click' , function(e){
    app.openPanel('left');
});

$$('#right-menu').on('click' , function(e){
    app.openPanel('right');
});

$$('.notification-default').on('click', function () {
    app.addNotification({
        title: 'Framework7',
        message: 'This is a simple notification message with title and message'
    });
});
$$('.notification-full').on('click', function () {
    app.addNotification({
        title: 'Framework7',
        subtitle: 'Notification subtitle',
        message: 'This is a simple notification message with custom icon and subtitle',
        media: '<i class="icon icon-f7"></i>'
    });
});
$$('.notification-custom').on('click', function () {
    app.addNotification({
        title: 'My Awesome App',
        subtitle: 'New message from John Doe',
        message: 'Hello, how are you? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut posuere erat. Pellentesque id elementum urna, a aliquam ante. Donec vitae volutpat orci. Aliquam sed molestie risus, quis tincidunt dui.',
        media: '<img width="44" height="44" style="border-radius:100%" src="http://lorempixel.com/output/people-q-c-100-100-9.jpg">'
    });
});
$$('.notification-callback').on('click', function () {
    app.addNotification({
        title: 'My Awesome App',
        subtitle: 'New message from John Doe',
        message: 'Hello, how are you? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut posuere erat. Pellentesque id elementum urna, a aliquam ante. Donec vitae volutpat orci. Aliquam sed molestie risus, quis tincidunt dui.',
        media: '<img width="44" height="44" style="border-radius:100%" src="http://lorempixel.com/output/people-q-c-100-100-9.jpg">',
        onClose: function () {
            app.alert('Notification closed');
        }
    });
});