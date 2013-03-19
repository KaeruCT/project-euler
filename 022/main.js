#!/usr/bin/env node

function get_score(str, p) {
    var i = 0, score = 0;

    for(; i < str.length; i += 1) {
        score += (str.charCodeAt(i) - 64);
    }

    return score * p;
}

function ns(file) {
    var total = 0,
        fs = require('fs'),
        carrier = require('carrier'),
        names = fs.readFileSync(file).toString().replace(/"/g, '').split(',');

    names.sort();
    names.forEach(function (name, i) {
        total += get_score(name, i+1);
    });

    return total;
}

console.log(ns('names.txt'));
