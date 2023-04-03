String getEllipsisMiddle(
  String text, {
  int count = 4,
  String ellipsisText = "...",
}) {
  String leftPart = text.substring(0, count);
  String rightPart = text.substring(count + ellipsisText.length, text.length);

  return leftPart + ellipsisText + rightPart;
}
