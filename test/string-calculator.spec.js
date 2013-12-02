(function() {
  describe('blank string', function() {
    return it('returns 0', function() {
      return expect(StringCalculator.add('')).toBe(0);
    });
  });

}).call(this);
