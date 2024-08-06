class CollectorsChartModel {
  final String collector;
  final double progress;

  const CollectorsChartModel ({required this.collector, required this.progress});
}

List<CollectorsChartModel> collectorList = [
  CollectorsChartModel(collector: 'Col1', progress: 0.22),
  CollectorsChartModel(collector: 'Col2', progress: 0.55),
  CollectorsChartModel(collector: 'Col3', progress: 0.80),
  CollectorsChartModel(collector: 'Col4', progress: 0.47),
  CollectorsChartModel(collector: 'Col5', progress: 0.10),
];