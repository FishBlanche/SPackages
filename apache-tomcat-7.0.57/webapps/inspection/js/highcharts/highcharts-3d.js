/*
 Highcharts JS v4.0.1 (2014-04-24)

 (c) 2009-2013 Torstein Hønsi

 License: www.highcharts.com/license
*/
(function(c) {
    function x(e, a, b, d) {
        var f, g, h;
        b *= n;
        a *= n;
        var i = [],
        j,
        o,
        t;
        b *= -1;
        j = d.x;
        o = d.y;
        t = (d.z === 0 ? 1.0E-4: d.z) * (d.vd || 25);
        var y = k(b),
        v = l(b),
        m = k(a),
        q = l(a),
        r,
        u,
        s;
        c.each(e,
        function(a) {
            r = a.x - j;
            u = a.y - o;
            s = a.z || 0;
            f = v * r - y * s;
            g = -y * m * r - v * m * s + q * u;
            h = y * q * r + v * q * s + m * u;
            f = f * ((t - h) / t) + j;
            g = g * ((t - h) / t) + o;
            i.push({
                x: C(f),
                y: C(g),
                z: C(h)
            })
        });
        return i
    }
    function z(e, a, b, d, f, c, h, i) {
        var j = [];
        return c > f && c - f > m / 2 + 1.0E-4 ? (j = j.concat(z(e, a, b, d, f, f + m / 2, h, i)), j = j.concat(z(e, a, b, d, f + m / 2, c, h, i))) : c < f && f - c > m / 2 + 1.0E-4 ? (j = j.concat(z(e, a, b, d, f, f - m / 2, h, i)), j = j.concat(z(e, a, b, d, f - m / 2, c, h, i))) : (j = c - f, ["C", e + b * l(f) - b * D * j * k(f) + h, a + d * k(f) + d * D * j * l(f) + i, e + b * l(c) + b * D * j * k(c) + h, a + d * k(c) - d * D * j * l(c) + i, e + b * l(c) + h, a + d * k(c) + i])
    }
    function F(e) {
        if (this.chart.is3d()) {
            var a = this.chart.options.plotOptions.column.grouping;
            a !== void 0 && !a && this.group.zIndex !== void 0 && this.group.attr({
                zIndex: this.group.zIndex * 10
            });
            if (this.userOptions.borderColor === void 0) this.options.borderColor = this.color;
            c.each(this.data,
            function(a) {
                var d = a.options.borderColor || a.color || a.series.userOptions.borderColor;
                a.options.borderColor = d;
                a.borderColor = d;
                a.pointAttr[""].stroke = d;
                a.pointAttr.hover.stroke = d;
                a.pointAttr.select.stroke = d
            })
        }
        e.apply(this, [].slice.call(arguments, 1))
    }
    var m = Math.PI,
    n = m / 180,
    k = Math.sin,
    l = Math.cos,
    C = Math.round,
    D = 4 * (Math.sqrt(2) - 1) / 3 / (m / 2);
    c.SVGRenderer.prototype.toLinePath = function(e, a) {
        var b = [];
        c.each(e,
        function(a) {
            b.push("L", a.x, a.y)
        });
        b[0] = "M";
        a && b.push("Z");
        return b
    };
    c.SVGRenderer.prototype.cuboid = function(e) {
        var a = this.g(),
        e = this.cuboidPath(e);
        a.front = this.path(e[0]).attr({
            zIndex: e[3],
            "stroke-linejoin": "round"
        }).add(a);
        a.top = this.path(e[1]).attr({
            zIndex: e[4],
            "stroke-linejoin": "round"
        }).add(a);
        a.side = this.path(e[2]).attr({
            zIndex: e[5],
            "stroke-linejoin": "round"
        }).add(a);
        a.fillSetter = function(a) {
            var d = c.Color(a).brighten(0.1).get(),
            e = c.Color(a).brighten( - 0.1).get();
            this.front.attr({
                fill: a
            });
            this.top.attr({
                fill: d
            });
            this.side.attr({
                fill: e
            });
            this.color = a;
            return this
        };
        a.opacitySetter = function(a) {
            this.front.attr({
                opacity: a
            });
            this.top.attr({
                opacity: a
            });
            this.side.attr({
                opacity: a
            });
            return this
        };
        a.attr = function(a) {
            a.shapeArgs || a.x ? (a = this.renderer.cuboidPath(a.shapeArgs || a), this.front.attr({
                d: a[0],
                zIndex: a[3]
            }), this.top.attr({
                d: a[1],
                zIndex: a[4]
            }), this.side.attr({
                d: a[2],
                zIndex: a[5]
            })) : c.SVGElement.prototype.attr.call(this, a);
            return this
        };
        a.animate = function(a, d, e) {
            a.x && a.y ? (a = this.renderer.cuboidPath(a), this.front.attr({
                zIndex: a[3]
            }).animate({
                d: a[0]
            },
            d, e), this.top.attr({
                zIndex: a[4]
            }).animate({
                d: a[1]
            },
            d, e), this.side.attr({
                zIndex: a[5]
            }).animate({
                d: a[2]
            },
            d, e)) : a.opacity ? (this.front.animate(a, d, e), this.top.animate(a, d, e), this.side.animate(a, d, e)) : c.SVGElement.prototype.animate.call(this, a, d, e);
            return this
        };
        a.destroy = function() {
            this.front.destroy();
            this.top.destroy();
            this.side.destroy();
            return null
        };
        a.attr({
            zIndex: -e[3]
        });
        return a
    };
    c.SVGRenderer.prototype.cuboidPath = function(e) {
        var a = e.x,
        b = e.y,
        d = e.z,
        c = e.height,
        g = e.width,
        h = e.depth,
        i = e.alpha,
        j = e.beta,
        a = [{
            x: a,
            y: b,
            z: d
        },
        {
            x: a + g,
            y: b,
            z: d
        },
        {
            x: a + g,
            y: b + c,
            z: d
        },
        {
            x: a,
            y: b + c,
            z: d
        },
        {
            x: a,
            y: b + c,
            z: d + h
        },
        {
            x: a + g,
            y: b + c,
            z: d + h
        },
        {
            x: a + g,
            y: b,
            z: d + h
        },
        {
            x: a,
            y: b,
            z: d + h
        }],
        a = x(a, i, j, e.origin),
        e = ["M", a[0].x, a[0].y, "L", a[7].x, a[7].y, "L", a[6].x, a[6].y, "L", a[1].x, a[1].y, "Z"],
        b = ["M", a[3].x, a[3].y, "L", a[2].x, a[2].y, "L", a[5].x, a[5].y, "L", a[4].x, a[4].y, "Z"],
        d = ["M", a[1].x, a[1].y, "L", a[2].x, a[2].y, "L", a[5].x, a[5].y, "L", a[6].x, a[6].y, "Z"],
        c = ["M", a[0].x, a[0].y, "L", a[7].x, a[7].y, "L", a[4].x, a[4].y, "L", a[3].x, a[3].y, "Z"];
        return [["M", a[0].x, a[0].y, "L", a[1].x, a[1].y, "L", a[2].x, a[2].y, "L", a[3].x, a[3].y, "Z"], a[7].y < a[1].y ? e: a[4].y > a[2].y ? b: [], a[6].x > a[1].x ? d: a[7].x < a[0].x ? c: [], (a[0].z + a[1].z + a[2].z + a[3].z) / 4, j > 0 ? (a[0].z + a[7].z + a[6].z + a[1].z) / 4 : (a[3].z + a[2].z + a[5].z + a[4].z) / 4, i > 0 ? (a[1].z + a[2].z + a[5].z + a[6].z) / 4 : (a[0].z + a[7].z + a[4].z + a[3].z) / 4]
    };
    c.SVGRenderer.prototype.arc3d = function(e) {
        e.alpha *= n;
        e.beta *= n;
        var a = this.g(),
        b = this.arc3dPath(e),
        d = a.renderer,
        f = b.zAll * 100;
        a.shapeArgs = e;
        a.side1 = d.path(b.side2).attr({
            zIndex: b.zSide2
        }).add(a);
        a.side2 = d.path(b.side1).attr({
            zIndex: b.zSide1
        }).add(a);
        a.inn = d.path(b.inn).attr({
            zIndex: b.zInn
        }).add(a);
        a.out = d.path(b.out).attr({
            zIndex: b.zOut
        }).add(a);
        a.top = d.path(b.top).attr({
            zIndex: b.zTop
        }).add(a);
        a.fillSetter = function(a) {
            this.color = a;
            var b = c.Color(a).brighten( - 0.1).get();
            this.side1.attr({
                fill: b
            });
            this.side2.attr({
                fill: b
            });
            this.inn.attr({
                fill: b
            });
            this.out.attr({
                fill: b
            });
            this.top.attr({
                fill: a
            });
            return this
        };
        a.animate = function(a, b, d) {
            c.SVGElement.prototype.animate.call(this, a, b, d);
            if (a.x && a.y) b = this.renderer,
            a = c.splat(a)[0],
            a.alpha *= n,
            a.beta *= n,
            b = b.arc3dPath(a),
            this.shapeArgs = a,
            this.inn.attr({
                d: b.inn,
                zIndex: b.zInn
            }),
            this.out.attr({
                d: b.out,
                zIndex: b.zOut
            }),
            this.side1.attr({
                d: b.side1,
                zIndex: b.zSide2
            }),
            this.side2.attr({
                d: b.side2,
                zIndex: b.zSide1
            }),
            this.top.attr({
                d: b.top,
                zIndex: b.zTop
            }),
            this.attr({
                fill: this.color
            }),
            this.attr({
                zIndex: b.zAll * 100
            });
            return this
        };
        a.zIndex = f;
        a.attr({
            zIndex: f
        });
        return a
    };
    c.SVGRenderer.prototype.arc3dPath = function(e) {
        var a = e.x,
        b = e.y,
        d = e.start,
        c = e.end - 1.0E-5,
        g = e.r,
        h = e.innerR,
        i = e.depth,
        j = e.alpha,
        o = e.beta,
        t = l(d),
        y = k(d),
        v = l(c),
        n = k(c),
        q = g * l(o),
        r = g * l(j),
        u = h * l(o),
        s = h * l(j),
        A = i * k(o),
        B = i * k(j),
        i = ["M", a + q * t, b + r * y],
        i = i.concat(z(a, b, q, r, d, c, 0, 0)),
        i = i.concat(["L", a + u * v, b + s * n]),
        i = i.concat(z(a, b, u, s, c, d, 0, 0)),
        i = i.concat(["Z"]),
        e = (e.start + e.end) / 2,
        e = k(o) * l(e) + k( - j) * k( - e),
        p = o > 0 ? m / 2 : 0,
        w = j > 0 ? 0 : m / 2,
        p = d > -p ? d: c > -p ? -p: d,
        x = c < m - w ? c: d < m - w ? m - w: c,
        w = ["M", a + q * l(p), b + r * k(p)],
        w = w.concat(z(a, b, q, r, p, x, 0, 0)),
        w = w.concat(["L", a + q * l(x) + A, b + r * k(x) + B]),
        w = w.concat(z(a, b, q, r, x, p, A, B)),
        w = w.concat(["Z"]),
        p = ["M", a + u * t, b + s * y],
        p = p.concat(z(a, b, u, s, d, c, 0, 0)),
        p = p.concat(["L", a + u * l(c) + A, b + s * k(c) + B]),
        p = p.concat(z(a, b, u, s, c, d, A, B)),
        p = p.concat(["Z"]),
        t = ["M", a + q * t, b + r * y, "L", a + q * t + A, b + r * y + B, "L", a + u * t + A, b + s * y + B, "L", a + u * t, b + s * y, "Z"],
        a = ["M", a + q * v, b + r * n, "L", a + q * v + A, b + r * n + B, "L", a + u * v + A, b + s * n + B, "L", a + u * v, b + s * n, "Z"],
        v = h + (g - h) / 2,
        b = Math.abs(e * 2 * v);
        g *= e;
        h *= e;
        d = (k(o) * l(d) + k( - j) * k( - d)) * v;
        c = (k(o) * l(c) + k( - j) * k( - c)) * v;
        return {
            top: i,
            zTop: b * 100,
            out: w,
            zOut: g * 100,
            inn: p,
            zInn: h * 100,
            side1: t,
            zSide1: d * 100,
            side2: a,
            zSide2: c * 100,
            zAll: e
        }
    };
    c.Chart.prototype.is3d = function() {
        return this.options.chart.options3d && this.options.chart.options3d.enabled
    };
    c.wrap(c.Chart.prototype, "isInsidePlot",
    function(c) {
        return this.is3d() ? !0 : c.apply(this, [].slice.call(arguments, 1))
    });
    c.wrap(c.Chart.prototype, "init",
    function(e) {
        var a = arguments;
        a[1] = c.merge({
            chart: {
                options3d: {
                    enabled: !1,
                    alpha: 0,
                    beta: 0,
                    depth: 100,
                    viewDistance: 25,
                    frame: {
                        bottom: {
                            size: 1,
                            color: "rgba(255,255,255,0)"
                        },
                        side: {
                            size: 1,
                            color: "rgba(255,255,255,0)"
                        },
                        back: {
                            size: 1,
                            color: "rgba(255,255,255,0)"
                        }
                    }
                }
            }
        },
        a[1]);
        e.apply(this, [].slice.call(a, 1))
    });
    c.wrap(c.Chart.prototype, "setChartSize",
    function(c) {
        c.apply(this, [].slice.call(arguments, 1));
        if (this.is3d()) {
            var a = this.inverted,
            b = this.clipBox,
            d = this.margin;
            b[a ? "y": "x"] = -(d[3] || 0);
            b[a ? "x": "y"] = -(d[0] || 0);
            b[a ? "height": "width"] = this.chartWidth + (d[3] || 0) + (d[1] || 0);
            b[a ? "width": "height"] = this.chartHeight + (d[0] || 0) + (d[2] || 0)
        }
    });
    c.wrap(c.Chart.prototype, "redraw",
    function(c) {
        if (this.is3d()) this.isDirtyBox = !0;
        c.apply(this, [].slice.call(arguments, 1))
    });
    c.Chart.prototype.retrieveStacks = function() {
        var e = {},
        a = this.options.plotOptions[this.options.chart.type],
        b = a.stacking,
        d = 1;
        if (a.grouping || !b) return this.series;
        c.each(this.series,
        function(a) {
            e[a.options.stack || 0] ? e[a.options.stack || 0].series.push(a) : (e[a.options.stack || 0] = {
                series: [a],
                position: d
            },
            d++)
        });
        e.totalStacks = d + 1;
        return e
    };
    c.wrap(c.Axis.prototype, "init",
    function(e) {
        var a = arguments;
        if (a[1].is3d()) a[2].tickWidth = c.pick(a[2].tickWidth, 0),
        a[2].gridLineWidth = c.pick(a[2].gridLineWidth, 1);
        e.apply(this, [].slice.call(arguments, 1))
    });
    c.wrap(c.Axis.prototype, "render",
    function(c) {
        c.apply(this, [].slice.call(arguments, 1));
        if (this.chart.is3d()) {
            var a = this.chart,
            b = a.renderer,
            d = a.options.chart.options3d,
            f = d.alpha,
            g = d.beta * (a.yAxis[0].opposite ? -1 : 1),
            h = d.frame,
            i = h.bottom,
            j = h.back,
            h = h.side,
            o = d.depth,
            k = this.height,
            l = this.width,
            m = this.left,
            n = this.top,
            d = {
                x: a.plotLeft + a.plotWidth / 2,
                y: a.plotTop + a.plotHeight / 2,
                z: o,
                vd: d.viewDistance
            };
            if (this.horiz) this.axisLine && this.axisLine.hide(),
            g = {
                x: m,
                y: n + (a.yAxis[0].reversed ? -i.size: k),
                z: 0,
                width: l,
                height: i.size,
                depth: o,
                alpha: f,
                beta: g,
                origin: d
            },
            this.bottomFrame ? this.bottomFrame.animate(g) : this.bottomFrame = b.cuboid(g).attr({
                fill: i.color,
                zIndex: a.yAxis[0].reversed && f > 0 ? 4 : -1
            }).css({
                stroke: i.color
            }).add();
            else {
                var q = {
                    x: m,
                    y: n,
                    z: o + 1,
                    width: l,
                    height: k + i.size,
                    depth: j.size,
                    alpha: f,
                    beta: g,
                    origin: d
                };
                this.backFrame ? this.backFrame.animate(q) : this.backFrame = b.cuboid(q).attr({
                    fill: j.color,
                    zIndex: -3
                }).css({
                    stroke: j.color
                }).add();
                this.axisLine && this.axisLine.hide();
                a = {
                    x: (a.yAxis[0].opposite ? l: 0) + m - h.size,
                    y: n,
                    z: 0,
                    width: h.size,
                    height: k + i.size,
                    depth: o + j.size,
                    alpha: f,
                    beta: g,
                    origin: d
                };
                this.sideFrame ? this.sideFrame.animate(a) : this.sideFrame = b.cuboid(a).attr({
                    fill: h.color,
                    zIndex: -2
                }).css({
                    stroke: h.color
                }).add()
            }
        }
    });
    c.wrap(c.Axis.prototype, "getPlotLinePath",
    function(c) {
        var a = c.apply(this, [].slice.call(arguments, 1));
        if (!this.chart.is3d()) return a;
        if (a === null) return a;
        var b = this.chart,
        d = b.options.chart.options3d,
        f = d.depth;
        d.origin = {
            x: b.plotLeft + b.plotWidth / 2,
            y: b.plotTop + b.plotHeight / 2,
            z: f,
            vd: d.viewDistance
        };
        var a = [{
            x: a[1],
            y: a[2],
            z: this.horiz || this.opposite ? f: 0
        },
        {
            x: a[1],
            y: a[2],
            z: f
        },
        {
            x: a[4],
            y: a[5],
            z: f
        },
        {
            x: a[4],
            y: a[5],
            z: this.horiz || this.opposite ? 0 : f
        }],
        f = b.options.inverted ? d.beta: d.alpha,
        g = b.options.inverted ? d.alpha: d.beta;
        g *= b.yAxis[0].opposite ? -1 : 1;
        a = x(a, f, g, d.origin);
        return a = this.chart.renderer.toLinePath(a, !1)
    });
    c.wrap(c.Tick.prototype, "getMarkPath",
    function(c) {
        var a = c.apply(this, [].slice.call(arguments, 1));
        if (!this.axis.chart.is3d()) return a;
        var b = this.axis.chart,
        d = b.options.chart.options3d,
        f = {
            x: b.plotLeft + b.plotWidth / 2,
            y: b.plotTop + b.plotHeight / 2,
            z: d.depth,
            vd: d.viewDistance
        },
        a = [{
            x: a[1],
            y: a[2],
            z: 0
        },
        {
            x: a[4],
            y: a[5],
            z: 0
        }],
        g = b.inverted ? d.beta: d.alpha,
        d = b.inverted ? d.alpha: d.beta;
        d *= b.yAxis[0].opposite ? -1 : 1;
        a = x(a, g, d, f);
        return a = ["M", a[0].x, a[0].y, "L", a[1].x, a[1].y]
    });
    c.wrap(c.Tick.prototype, "getLabelPosition",
    function(c) {
        var a = c.apply(this, [].slice.call(arguments, 1));
        if (!this.axis.chart.is3d()) return a;
        var b = this.axis.chart,
        d = b.options.chart.options3d,
        f = {
            x: b.plotLeft + b.plotWidth / 2,
            y: b.plotTop + b.plotHeight / 2,
            z: d.depth,
            vd: d.viewDistance
        },
        g = b.inverted ? d.beta: d.alpha,
        d = b.inverted ? d.alpha: d.beta;
        d *= b.yAxis[0].opposite ? -1 : 1;
        return a = x([{
            x: a.x,
            y: a.y,
            z: 0
        }], g, d, f)[0]
    });
    c.wrap(c.Axis.prototype, "drawCrosshair",
    function(c) {
        var a = arguments;
        this.chart.is3d() && a[2] && (a[2] = {
            plotX: a[2].plotXold || a[2].plotX,
            plotY: a[2].plotYold || a[2].plotY
        });
        c.apply(this, [].slice.call(a, 1))
    });
    c.wrap(c.seriesTypes.column.prototype, "translate",
    function(e) {
        e.apply(this, [].slice.call(arguments, 1));
        if (this.chart.is3d()) {
            var a = this.chart,
            b = a.options,
            d = b.plotOptions[this.chart.options.chart.type],
            b = b.chart.options3d,
            f = d.depth || 25,
            g = {
                x: a.plotWidth / 2,
                y: a.plotHeight / 2,
                z: b.depth,
                vd: b.viewDistance
            },
            h = b.alpha,
            i = b.beta * (a.yAxis[0].opposite ? -1 : 1),
            j = (d.stacking ? this.options.stack || 0 : this._i) * (f + (d.groupZPadding || 1));
            d.grouping !== !1 && (j = 0);
            j += d.groupZPadding || 1;
            c.each(this.data,
            function(a) {
                var b = a.shapeArgs,
                c = a.tooltipPos;
                a.shapeType = "cuboid";
                b.alpha = h;
                b.beta = i;
                b.z = j;
                b.origin = g;
                b.depth = f;
                c = x([{
                    x: c[0],
                    y: c[1],
                    z: j
                }], h, i, g)[0];
                a.tooltipPos = [c.x, c.y]
            })
        }
    });
    c.wrap(c.seriesTypes.column.prototype, "animate",
    function(e) {
        if (this.chart.is3d()) {
            var a = arguments[1],
            b = this.yAxis,
            d = this,
            f = this.yAxis.reversed;
            if (c.svg) a ? c.each(d.data,
            function(a) {
                a.height = a.shapeArgs.height;
                a.shapeArgs.height = 1;
                if (!f) a.shapeArgs.y = a.stackY ? a.plotY + b.translate(a.stackY) : a.plotY + (a.negative ? -a.height: a.height)
            }) : (c.each(d.data,
            function(a) {
                a.shapeArgs.height = a.height;
                if (!f) a.shapeArgs.y = a.plotY - (a.negative ? a.height: 0);
                a.graphic && a.graphic.animate(a.shapeArgs, d.options.animation)
            }), d.animate = null)
        } else e.apply(this, [].slice.call(arguments, 1))
    });
    c.wrap(c.seriesTypes.column.prototype, "init",
    function(c) {
        c.apply(this, [].slice.call(arguments, 1));
        if (this.chart.is3d()) {
            var a = this.chart.options.plotOptions.column.grouping,
            b = this.chart.options.plotOptions.column.stacking,
            d = this.options.zIndex;
            if (!d && (a === void 0 || a) && b) {
                a = this.chart.retrieveStacks();
                b = this.options.stack || 0;
                for (d = 0; d < a[b].series.length; d++) if (a[b].series[d] === this) break;
                d = a.totalStacks * 10 - 10 * (a.totalStacks - a[b].position) - d;
                this.options.zIndex = d
            }
        }
    });
    c.seriesTypes.columnrange && c.wrap(c.seriesTypes.columnrange.prototype, "drawPoints", F);
    c.wrap(c.seriesTypes.column.prototype, "drawPoints", F);
    var E = c.getOptions();
    E.plotOptions.cylinder = c.merge(E.plotOptions.column);
    E = c.extendClass(c.seriesTypes.column, {
        type: "cylinder"
    });
    c.seriesTypes.cylinder = E;
    c.wrap(c.seriesTypes.cylinder.prototype, "translate",
    function(e) {
        e.apply(this, [].slice.call(arguments, 1));
        if (this.chart.is3d()) {
            var a = this.chart,
            b = a.options,
            d = b.plotOptions.cylinder,
            b = b.chart.options3d,
            f = d.depth || 0,
            g = {
                x: a.inverted ? a.plotHeight / 2 : a.plotWidth / 2,
                y: a.inverted ? a.plotWidth / 2 : a.plotHeight / 2,
                z: b.depth,
                vd: b.viewDistance
            },
            h = b.alpha,
            i = d.stacking ? (this.options.stack || 0) * f: this._i * f;
            i += f / 2;
            d.grouping !== !1 && (i = 0);
            c.each(this.data,
            function(a) {
                var b = a.shapeArgs;
                a.shapeType = "arc3d";
                b.x += f / 2;
                b.z = i;
                b.start = 0;
                b.end = 2 * m;
                b.r = f * 0.95;
                b.innerR = 0;
                b.depth = b.height * (1 / k((90 - h) * n)) - i;
                b.alpha = 90 - h;
                b.beta = 0;
                b.origin = g
            })
        }
    });
    c.wrap(c.seriesTypes.pie.prototype, "translate",
    function(e) {
        e.apply(this, [].slice.call(arguments, 1));
        if (this.chart.is3d()) {
            var a = this,
            b = a.chart,
            d = b.options,
            f = d.plotOptions.pie,
            g = f.depth || 0,
            d = d.chart.options3d,
            h = {
                x: b.plotWidth / 2,
                y: b.plotHeight / 2,
                z: d.depth
            },
            i = d.alpha,
            j = d.beta,
            o = f.stacking ? (this.options.stack || 0) * g: a._i * g;
            o += g / 2;
            f.grouping !== !1 && (o = 0);
            c.each(a.data,
            function(b) {
                b.shapeType = "arc3d";
                var c = b.shapeArgs;
                c.z = o;
                c.depth = g * 0.75;
                c.origin = h;
                c.alpha = i;
                c.beta = j;
                c = (c.end + c.start) / 2;
                b.slicedTranslation = {
                    translateX: C(l(c) * a.options.slicedOffset * l(i * n)),
                    translateY: C(k(c) * a.options.slicedOffset * l(i * n))
                }
            })
        }
    });
    c.wrap(c.seriesTypes.pie.prototype.pointClass.prototype, "haloPath",
    function(c) {
        return this.series.chart.is3d() ? [] : c.call(this)
    });
    c.wrap(c.seriesTypes.pie.prototype, "drawPoints",
    function(e) {
        this.chart.is3d() && c.each(this.data,
        function(a) {
            var b = a.options.borderColor || a.color || a.series.userOptions.borderColor || a.series.color;
            a.options.borderColor = b;
            a.borderColor = b;
            a.pointAttr[""].stroke = b;
            a.pointAttr.hover.stroke = b;
            a.pointAttr.select.stroke = b
        });
        e.apply(this, [].slice.call(arguments, 1))
    });
    c.wrap(c.seriesTypes.pie.prototype, "drawDataLabels",
    function(e) {
        e.apply(this, [].slice.call(arguments, 1));
        this.chart.is3d() && c.each(this.data,
        function(a) {
            var b = a.shapeArgs,
            c = b.r,
            e = b.depth,
            g = b.alpha * n,
            h = b.beta * n,
            b = (b.start + b.end) / 2;
            a.connector && a.connector.translate( - c * (1 - l(h)) * l(b) + (l(b) > 0 ? k(h) * e: 0), -c * (1 - l(g)) * k(b) + (k(b) > 0 ? k(g) * e: 0));
            a.dataLabel && a.dataLabel.attr({
                x: a.dataLabel.connX + -c * (1 - l(h)) * l(b) + (l(b) > 0 ? l(h) * e: 0) - a.dataLabel.width / 2,
                y: a.dataLabel.connY + -c * (1 - l(g)) * k(b) + (k(b) > 0 ? k(g) * e: 0) - a.dataLabel.height / 2
            })
        })
    });
    c.wrap(c.seriesTypes.pie.prototype, "addPoint",
    function(c) {
        c.apply(this, [].slice.call(arguments, 1));
        this.chart.is3d() && this.update()
    });
    c.wrap(c.seriesTypes.pie.prototype, "animate",
    function(e) {
        if (this.chart.is3d()) {
            var a = arguments[1],
            b = this.options.animation,
            d = this.center,
            f = this.group,
            g = this.markerGroup;
            if (c.svg) if (b === !0 && (b = {}), a) {
                if (this.oldtranslateX = f.translateX, this.oldtranslateY = f.translateY, a = {
                    translateX: d[0],
                    translateY: d[1],
                    scaleX: 0.001,
                    scaleY: 0.001
                },
                f.attr(a), g) g.attrSetters = f.attrSetters,
                g.attr(a)
            } else a = {
                translateX: this.oldtranslateX,
                translateY: this.oldtranslateY,
                scaleX: 1,
                scaleY: 1
            },
            f.animate(a, b),
            g && g.animate(a, b),
            this.animate = null
        } else e.apply(this, [].slice.call(arguments, 1))
    });
    c.wrap(c.seriesTypes.scatter.prototype, "translate",
    function(e) {
        e.apply(this, [].slice.call(arguments, 1));
        if (this.chart.is3d()) {
            var a = this.chart,
            b = this.chart.options.chart.options3d,
            d = b.alpha,
            f = b.beta,
            g = {
                x: a.inverted ? a.plotHeight / 2 : a.plotWidth / 2,
                y: a.inverted ? a.plotWidth / 2 : a.plotHeight / 2,
                z: b.depth,
                vd: b.viewDistance
            },
            b = b.depth,
            h = a.options.zAxis || {
                min: 0,
                max: b
            },
            i = b / (h.max - h.min);
            c.each(this.data,
            function(a) {
                var b = {
                    x: a.plotX,
                    y: a.plotY,
                    z: (a.z - h.min) * i
                },
                b = x([b], d, f, g)[0];
                a.plotXold = a.plotX;
                a.plotYold = a.plotY;
                a.plotX = b.x;
                a.plotY = b.y;
                a.plotZ = b.z
            })
        }
    });
    c.wrap(c.seriesTypes.scatter.prototype, "init",
    function(c) {
        var a = c.apply(this, [].slice.call(arguments, 1));
        if (this.chart.is3d()) this.pointArrayMap = ["x", "y", "z"],
        this.tooltipOptions.pointFormat = this.userOptions.tooltip ? this.userOptions.tooltip.pointFormat || "x: <b>{point.x}</b><br/>y: <b>{point.y}</b><br/>z: <b>{point.z}</b><br/>": "x: <b>{point.x}</b><br/>y: <b>{point.y}</b><br/>z: <b>{point.z}</b><br/>";
        return a
    });
    if (c.VMLRenderer) c.setOptions({
        animate: !1
    }),
    c.VMLRenderer.prototype.cuboid = c.SVGRenderer.prototype.cuboid,
    c.VMLRenderer.prototype.cuboidPath = c.SVGRenderer.prototype.cuboidPath,
    c.VMLRenderer.prototype.toLinePath = c.SVGRenderer.prototype.toLinePath,
    c.VMLRenderer.prototype.createElement3D = c.SVGRenderer.prototype.createElement3D,
    c.VMLRenderer.prototype.arc3d = function(e) {
        e = c.SVGRenderer.prototype.arc3d.call(this, e);
        e.css({
            zIndex: e.zIndex
        });
        return e
    },
    c.VMLRenderer.prototype.arc3dPath = c.SVGRenderer.prototype.arc3dPath,
    c.Chart.prototype.renderSeries = function() {
        for (var c, a = this.series.length; a--;) c = this.series[a],
        c.translate(),
        c.setTooltipPoints && c.setTooltipPoints(),
        c.render()
    },
    c.wrap(c.Axis.prototype, "render",
    function(c) {
        c.apply(this, [].slice.call(arguments, 1));
        this.sideFrame && (this.sideFrame.css({
            zIndex: 0
        }), this.sideFrame.front.attr({
            fill: this.sideFrame.color
        }));
        this.bottomFrame && (this.bottomFrame.css({
            zIndex: 1
        }), this.bottomFrame.front.attr({
            fill: this.bottomFrame.color
        }));
        this.backFrame && (this.backFrame.css({
            zIndex: 0
        }), this.backFrame.front.attr({
            fill: this.backFrame.color
        }))
    })
})(Highcharts);