class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  // factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
  //   return PanelizationSummary(
  //     containsEpubBubbles: json['containsEpubBubbles'] as bool?,
  //     containsImageBubbles: json['containsImageBubbles'] as bool?,
  //   );
  // }

  // Map<String, dynamic> toJson() => {
  //       'containsEpubBubbles': containsEpubBubbles,
  //       'containsImageBubbles': containsImageBubbles,
  //     };

  Map<String, dynamic> toMap() {
    return {
      'containsEpubBubbles': containsEpubBubbles,
      'containsImageBubbles': containsImageBubbles,
    };
  }

  factory PanelizationSummary.fromMap(Map<String, dynamic> map) {
    return PanelizationSummary(
      containsEpubBubbles: map['containsEpubBubbles'],
      containsImageBubbles: map['containsImageBubbles'],
    );
  }
}
