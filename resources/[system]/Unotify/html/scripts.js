$(function () {
    var sound = new Audio('sound.mp3');
    sound.volume = 0.8;
    window.addEventListener('message', function (event) {
        if (event.data.action == 'open') {
            var number = Math.floor((Math.random() * 1000) + 1);
            $('.toast').append(`
            <div class="wrapper-${number}">
                <div class="notification_main-${number}">
                    <div class="title-${number}"></div>
                    <div class="text-${number}">
                        ${event.data.message}
                    </div>
                </div>
            </div>`)
            $(`.wrapper-${number}`).css({
                "margin-bottom": "10px",
                "width": "275px",
                "margin": "0 0 8px -1260px",
                "border-radius": "10px"
            })
            $('.notification_main-'+number).addClass('main')
            $('.text-'+number).css({
                "font-size": "14px"
            })

            if (event.data.type == 'sucesso') {
                $(`.title-${number}`).html(event.data.title).css({
                    "font-size": "16px",
                    "font-weight": "600"
                })
                $(`.notification_main-${number}`).addClass('sucesso-icon')
                $(`.wrapper-${number}`).addClass('sucesso sucesso-border')
                sound.play();
            } else if (event.data.type == 'importante') {
                $(`.title-${number}`).html(event.data.title).css({
                    "font-size": "16px",
                    "font-weight": "600"
                })
                $(`.notification_main-${number}`).addClass('importante-icon')
                $(`.wrapper-${number}`).addClass('importante importante-border')
                sound.play();
            } else if (event.data.type == 'negado') {
                $(`.title-${number}`).html(event.data.title).css({
                    "font-size": "16px",
                    "font-weight": "600"
                })
                $(`.notification_main-${number}`).addClass('negado-icon')
                $(`.wrapper-${number}`).addClass('negado negado-border')
                sound.play();
            } else if (event.data.type == 'aviso') {
                $(`.title-${number}`).html(event.data.title).css({
                    "font-size": "16px",
                    "font-weight": "600"
                })
                $(`.notification_main-${number}`).addClass('aviso-icon')
                $(`.wrapper-${number}`).addClass('aviso aviso-border')
                sound.play();
            } else if (event.data.type == 'phonemessage') {
                $(`.title-${number}`).html(event.data.title).css({
                    "font-size": "16px",
                    "font-weight": "600"
                })
                $(`.notification_main-${number}`).addClass('phonemessage-icon')
                $(`.wrapper-${number}`).addClass('phonemessage phonemessage-border')
                sound.play();
            } else if (event.data.type == 'neutro') {
                $(`.title-${number}`).html(event.data.title).css({
                    "font-size": "16px",
                    "font-weight": "600"
                })
                $(`.notification_main-${number}`).addClass('neutro-icon')
                $(`.wrapper-${number}`).addClass('neutro neutro-border')
                sound.play();
            }
            anime({
                targets: `.wrapper-${number}`,
                translateX: 20,
                duration: 750,
                easing: 'spring(1, 70, 100, 10)',
            })
            setTimeout(function () {
                anime({
                    targets: `.wrapper-${number}`,
                    translateX: -500,
                    duration: 750,
                    easing: 'spring(1, 80, 100, 0)'
                })
                setTimeout(function () {
                    $(`.wrapper-${number}`).remove()
                }, 750)
            }, event.data.time)
        }
    })
})