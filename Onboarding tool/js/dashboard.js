/* globals Chart:false, feather:false */

(function () {
    'use strict'

    feather.replace({ 'aria-hidden': 'true' })

    // Graphs
    var ctx = document.getElementById('myChart')
    // eslint-disable-next-line no-unused-vars
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: [
                '',
                'August',
                'September',
                'October',
                'November',
                'December',
                'January'
            ],
            datasets: [{
                data: [
                    3,
                    6,
                    2,
                    8,
                    4,
                    5,
                    10
                ],
                lineTension: 0,
                backgroundColor: 'transparent',
                borderColor: '#ff9d5c',
                borderWidth: 4,
                pointBackgroundColor: '#007bff'
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: false
                    }
                }]
            },
            legend: {
                display: false
            }
        }
    })
})()
