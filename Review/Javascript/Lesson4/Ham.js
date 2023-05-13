function remove(a, b, c, result) {
    a.value = ""
    b.value = ""
    c.value = ""
    result.value = ""
}
function find(a, b, c) {
    if (!Kiemtra(a, b, c)) {
        alert("Input data is not real number in range [-100, 100]")
        return;
    }
    let check = document.querySelectorAll(".checks input");
    if (check[0].checked) {
        result.value = TimMax(a, b, c);
        return;
    }
    if (check[1].checked) {
        result.value = TimMin(a, b, c);
        return;
    }
}
function TimMin(a, b, c) {
    return Math.min(parseFloat(a.value), parseFloat(b.value), parseFloat(c.value));
}
function TimMax(a, b, c) {
    return Math.max(parseFloat(a.value), parseFloat(b.value), parseFloat(c.value));
}
function Kiemtra(a, b, c) {
    let ia = parseFloat(a.value);
    let ib = parseFloat(b.value);
    let ic = parseFloat(c.value);
    if (isNaN(ia) || ia < -100 || ia > 100) return false;
    if (isNaN(ib) || ib < -100 || ib > 100) return false;
    if (isNaN(ic) || ic < -100 || ic > 100) return false;
    return true;
}
