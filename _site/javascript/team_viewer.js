// Generated by CoffeeScript 1.7.1
(function() {
  window.TenForward || (window.TenForward = {});

  TenForward.TeamViewer = (function() {
    function TeamViewer() {
      this.initListeners();
    }

    TeamViewer.prototype.initListeners = function() {
      $('.bio-button').on('click', this.showBio);
      $('.bio .close').on('click', this.hideBio);
      return $('body').on('click', this.hideBio);
    };

    TeamViewer.prototype.showBio = function(ev) {
      var name;
      $('.bio-buttons').hide();
      name = $(ev.target).data().name;
      $(".bio[data-name='" + name + "']").show();
      return ev.stopPropagation();
    };

    TeamViewer.prototype.hideBio = function(ev) {
      var $target;
      $target = $(ev.target);
      if ($target.hasClass('close') || $target.closest('.bio').length === 0) {
        $('.bio-buttons').show();
        return $(".bio").hide();
      }
    };

    return TeamViewer;

  })();

}).call(this);