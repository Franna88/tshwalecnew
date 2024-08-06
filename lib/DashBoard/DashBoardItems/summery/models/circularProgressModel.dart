class ProgressItem {
  final String header;
  final int currentValue;
  final int totalValue;
  final double progress;

  ProgressItem({
    required this.header,
    required this.currentValue,
    required this.totalValue,
    required this.progress,
  });
}


 final List<ProgressItem> items = [
    ProgressItem(header: 'Surveying', currentValue: 27, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'Pole Numbering', currentValue: 21, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'Excavation', currentValue: 45, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'Installation', currentValue: 27, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'Dressing', currentValue: 21, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'Earth Resist', currentValue: 45, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'ACSR', currentValue: 27, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'OPGW', currentValue: 21, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'Finalisation', currentValue: 45, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'Rehabilitation', currentValue: 27, totalValue: 304, progress: 78.6),
    ProgressItem(header: 'Quality Check', currentValue: 21, totalValue: 304, progress: 78.6),
  ];