/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Charts module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0
import QtCharts 2.0

Item {
    anchors.fill: parent

    //![1]
    ChartView {
        title: "Temperatura"
        anchors.fill: parent
        legend.visible: false
        antialiasing: true

        ValueAxis {
            titleText: "Tempo"
            id: axisX
            min: 0
            max: 10
            tickCount: 5
        }

        ValueAxis {
            id: axisY
            min: 20
            max: 30
        }

        LineSeries {
            id: series1
            axisX: axisX
            axisY: CategoryAxis {
                min: 0
                max: 12
                CategoryRange {
                    label: "baixo"
                    endValue: 4
                }
                CategoryRange {
                    label: "normal"
                    endValue: 8
                }
                CategoryRange {
                    label: "alto"
                    endValue: 12
                }
            }
        }

        ScatterSeries {
            id: series2
            axisX: axisX
            axisY: axisY
        }
    }

    // Add data dynamically to the series
    Component.onCompleted: {
        for (var i = 0; i <= 10; i++) {
            series1.append(i, Math.random()*10);
            //series2.append(i, Math.random());
        }
    }
    //![1]
}
