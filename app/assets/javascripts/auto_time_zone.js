(function () {
  var getOffset = function (reference) {
    var date     = new Date(),
        local    = date.getTime() / 1000,
        timezone = date.getTimezoneOffset() / 30,
        distance = Math.round((reference - local) / 1800),
        offset   = Math.round(distance + timezone) % 48;

    if (offset === 0)
      return 0;

    if (offset > 24)
      offset -= Math.ceil(offset / 48) * 48;

    else if (offset < -28)
      offset += Math.ceil(offset / -48) * 48;

    return offset * 30;
  };

  window.autoTimeZone = function (serverTime) {
    var offset = getOffset(serverTime);
    document.cookie = 'timezone=' + offset.toString() + '; path=/';
    return offset;
  };
}());