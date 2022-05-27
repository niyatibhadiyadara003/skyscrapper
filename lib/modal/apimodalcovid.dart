/*class Covidapi {
  int date;
  String state;
  int positive;
  int nagativel;
  String totalTestResultsSource;
  int totalTestResults;
  int hospitalizedCurrently;
  String lastUpdateEt;
  int death;
  int hospitalized;
  int totalTestsViral;
  int positiveTestsViral;
  int negativeTestsViral;

  Covidapi(
      {
      required this.state,
      required this.date,
      required this.death,
      required this.hospitalized,
      required this.hospitalizedCurrently,
      required this.lastUpdateEt,
      required this.nagativel,
      required this.negativeTestsViral,
      required this.positive,
      required this.positiveTestsViral,
      required this.totalTestResults,
      required this.totalTestResultsSource,
      required this.totalTestsViral});

  factory Covidapi.fromJson(Map<String,dynamic> Json)
  {
    return Covidapi(
        state: Json['state'],
        date: Json['date'],
        death: Json['death'],
        hospitalized: Json['hospitalized'],
        hospitalizedCurrently: Json['hospitalizedCurrently'],
        lastUpdateEt: Json['lastUpdateEt'],
        nagativel: Json['nagativel'],
        negativeTestsViral: Json['negativeTestsViral'],
        positive: Json['positive'],
        positiveTestsViral: Json['positiveTestsViral'],
        totalTestResults: Json['totalTestResults'],
        totalTestResultsSource: Json['totalTestResultsSource'],
        totalTestsViral: Json['totalTestsViral'],
    );
  }
}
*/
/*

class Covidapi {
  Covidapi({
    required this.date,
    required this.state,
    required this.positive,
    required this.probableCases,
    required this.negative,
    required this.pending,
    required this.totalTestResults,
    required this.hospitalizedCurrently,
    required this.hospitalizedCumulative,
    required this.inIcuCurrently,
    required this.inIcuCumulative,
    required this.onVentilatorCurrently,
    required this.onVentilatorCumulative,
    required this.recovered,
    required this.lastUpdateEt,
    required this.checkTimeEt,
    required this.death,
    required this.hospitalized,
    required this.hospitalizedDischarged,
    required this.totalTestsViral,
    required this.positiveTestsViral,
    required this.negativeTestsViral,
    required this.positiveCasesViral,
    required this.deathConfirmed,
    required this.deathProbable,
    required this.totalTestEncountersViral,
    required this.totalTestsPeopleViral,
    required this.totalTestsAntibody,
    required this.positiveTestsAntibody,
    required this.negativeTestsAntibody,
    required this.totalTestsPeopleAntibody,
    required this.positiveTestsPeopleAntibody,
    required  this.negativeTestsPeopleAntibody,
    required  this.totalTestsPeopleAntigen,
    required  this.positiveTestsPeopleAntigen,
    required  this.totalTestsAntigen,
    required  this.positiveTestsAntigen,
    required this.fips,
    required this.positiveIncrease,
    required  this.negativeIncrease,
    required  this.total,
    required   this.totalTestResultsIncrease,
    required  this.posNeg,
    required  this.dataQualityGrade,
    required   this.deathIncrease,
    required  this.hospitalizedIncrease,
    required  this.hash,
    required this.commercialScore,
    required  this.negativeRegularScore,
    required this.negativeScore,
    required  this.positiveScore,
    required  this.score,
    required this.grade,
  });

  int date;
  String state;
  int positive;
  int probableCases;
  int negative;
  int pending;
  int totalTestResults;
  int hospitalizedCurrently;
  int hospitalizedCumulative;
  int inIcuCurrently;
  int inIcuCumulative;
  int onVentilatorCurrently;
  int onVentilatorCumulative;
  int recovered;
  String lastUpdateEt;
  String checkTimeEt;
  int death;
  int hospitalized;
  int hospitalizedDischarged;
  int totalTestsViral;
  int positiveTestsViral;
  int negativeTestsViral;
  int positiveCasesViral;
  int deathConfirmed;
  int deathProbable;
  int totalTestEncountersViral;
  int totalTestsPeopleViral;
  int totalTestsAntibody;
  int positiveTestsAntibody;
  int negativeTestsAntibody;
  int totalTestsPeopleAntibody;
  int positiveTestsPeopleAntibody;
  int negativeTestsPeopleAntibody;
  int totalTestsPeopleAntigen;
  int positiveTestsPeopleAntigen;
  int totalTestsAntigen;
  int positiveTestsAntigen;
  String fips;
  int positiveIncrease;
  int negativeIncrease;
  int total;
  int totalTestResultsIncrease;
  int posNeg;
  dynamic dataQualityGrade;
  int deathIncrease;
  int hospitalizedIncrease;
  String hash;
  int commercialScore;
  int negativeRegularScore;
  int negativeScore;
  int positiveScore;
  int score;
  String grade;

  factory Covidapi.fromJson(Map<String, dynamic> json) => Covidapi(
    date: json["date"],
    state: json["state"],
    positive: json["positive"],
    probableCases: json["probableCases"] == null ? null : json["probableCases"],
    negative: json["negative"] == null ? null : json["negative"],
    pending: json["pending"] == null ? null : json["pending"],

    totalTestResults: json["totalTestResults"],
    hospitalizedCurrently: json["hospitalizedCurrently"] == null ? null : json["hospitalizedCurrently"],
    hospitalizedCumulative: json["hospitalizedCumulative"] == null ? null : json["hospitalizedCumulative"],
    inIcuCurrently: json["inIcuCurrently"] == null ? null : json["inIcuCurrently"],
    inIcuCumulative: json["inIcuCumulative"] == null ? null : json["inIcuCumulative"],
    onVentilatorCurrently: json["onVentilatorCurrently"] == null ? null : json["onVentilatorCurrently"],
    onVentilatorCumulative: json["onVentilatorCumulative"] == null ? null : json["onVentilatorCumulative"],
    recovered: json["recovered"] == null ? null : json["recovered"],
    lastUpdateEt: json["lastUpdateEt"] == null ? null : json["lastUpdateEt"],
    checkTimeEt: json["checkTimeEt"] == null ? null : json["checkTimeEt"],
    death: json["death"],
    hospitalized: json["hospitalized"] == null ? null : json["hospitalized"],
    hospitalizedDischarged: json["hospitalizedDischarged"] == null ? null : json["hospitalizedDischarged"],
    totalTestsViral: json["totalTestsViral"] == null ? null : json["totalTestsViral"],
    positiveTestsViral: json["positiveTestsViral"] == null ? null : json["positiveTestsViral"],
    negativeTestsViral: json["negativeTestsViral"] == null ? null : json["negativeTestsViral"],
    positiveCasesViral: json["positiveCasesViral"] == null ? null : json["positiveCasesViral"],
    deathConfirmed: json["deathConfirmed"] == null ? null : json["deathConfirmed"],
    deathProbable: json["deathProbable"] == null ? null : json["deathProbable"],
    totalTestEncountersViral: json["totalTestEncountersViral"] == null ? null : json["totalTestEncountersViral"],
    totalTestsPeopleViral: json["totalTestsPeopleViral"] == null ? null : json["totalTestsPeopleViral"],
    totalTestsAntibody: json["totalTestsAntibody"] == null ? null : json["totalTestsAntibody"],
    positiveTestsAntibody: json["positiveTestsAntibody"] == null ? null : json["positiveTestsAntibody"],
    negativeTestsAntibody: json["negativeTestsAntibody"] == null ? null : json["negativeTestsAntibody"],
    totalTestsPeopleAntibody: json["totalTestsPeopleAntibody"] == null ? null : json["totalTestsPeopleAntibody"],
    positiveTestsPeopleAntibody: json["positiveTestsPeopleAntibody"] == null ? null : json["positiveTestsPeopleAntibody"],
    negativeTestsPeopleAntibody: json["negativeTestsPeopleAntibody"] == null ? null : json["negativeTestsPeopleAntibody"],
    totalTestsPeopleAntigen: json["totalTestsPeopleAntigen"] == null ? null : json["totalTestsPeopleAntigen"],
    positiveTestsPeopleAntigen: json["positiveTestsPeopleAntigen"] == null ? null : json["positiveTestsPeopleAntigen"],
    totalTestsAntigen: json["totalTestsAntigen"] == null ? null : json["totalTestsAntigen"],
    positiveTestsAntigen: json["positiveTestsAntigen"] == null ? null : json["positiveTestsAntigen"],
    fips: json["fips"],
    positiveIncrease: json["positiveIncrease"],
    negativeIncrease: json["negativeIncrease"],
    total: json["total"],
    totalTestResultsIncrease: json["totalTestResultsIncrease"],
    posNeg: json["posNeg"],
    dataQualityGrade: json["dataQualityGrade"],
    deathIncrease: json["deathIncrease"],
    hospitalizedIncrease: json["hospitalizedIncrease"],
    hash: json["hash"],
    commercialScore: json["commercialScore"],
    negativeRegularScore: json["negativeRegularScore"],
    negativeScore: json["negativeScore"],
    positiveScore: json["positiveScore"],
    score: json["score"],
    grade: json["grade"],
  );
}*/

class Covidapi
{
  String loc;
int totalConfirmed;
int confirmedCasesIndian;
int confirmedCasesForeign;
int discharged;
int deaths;

Covidapi({
  required this.totalConfirmed,
  required this.confirmedCasesForeign,
  required this.confirmedCasesIndian,
  required this.deaths,
  required this.discharged,
  required this.loc,
});


factory Covidapi.fromJson(Map<String,dynamic> json){
    return Covidapi(
      totalConfirmed: json['data']['regional'][0]['totalConfirmed'],
      confirmedCasesForeign: json['data']['regional'][0]['confirmedCasesForeign'],
      confirmedCasesIndian: json['data']['regional'][0]['confirmedCasesIndian'],
      deaths: json['data']['regional'][0]['deaths'],
      discharged: json['data']['regional'][0]['discharged'],
      loc: json['data']['regional'][0]['loc'],
    );
}
  factory Covidapi.fromJson1(Map<String,dynamic> json){
    return Covidapi(
      totalConfirmed: json['data']['regional'][1]['totalConfirmed'],
      confirmedCasesForeign: json['data']['regional'][1]['confirmedCasesForeign'],
      confirmedCasesIndian: json['data']['regional'][1]['confirmedCasesIndian'],
      deaths: json['data']['regional'][1]['deaths'],
      discharged: json['data']['regional'][1]['discharged'],
      loc: json['data']['regional'][1]['loc'],
    );
  }
  factory Covidapi.fromJson2(Map<String,dynamic> json){
    return Covidapi(
      totalConfirmed: json['data']['regional'][11]['totalConfirmed'],
      confirmedCasesForeign: json['data']['regional'][11]['confirmedCasesForeign'],
      confirmedCasesIndian: json['data']['regional'][11]['confirmedCasesIndian'],
      deaths: json['data']['regional'][11]['deaths'],
      discharged: json['data']['regional'][11]['discharged'],
      loc: json['data']['regional'][11]['loc'],
    );
  }
  factory Covidapi.fromJson3(Map<String,dynamic> json){
    return Covidapi(
      totalConfirmed: json['data']['regional'][23]['totalConfirmed'],
      confirmedCasesForeign: json['data']['regional'][23]['confirmedCasesForeign'],
      confirmedCasesIndian: json['data']['regional'][23]['confirmedCasesIndian'],
      deaths: json['data']['regional'][23]['deaths'],
      discharged: json['data']['regional'][23]['discharged'],
      loc: json['data']['regional'][23]['loc'],
    );
  }
  factory Covidapi.fromJson4(Map<String,dynamic> json){
    return Covidapi(
      totalConfirmed: json['data']['regional'][14]['totalConfirmed'],
      confirmedCasesForeign: json['data']['regional'][14]['confirmedCasesForeign'],
      confirmedCasesIndian: json['data']['regional'][14]['confirmedCasesIndian'],
      deaths: json['data']['regional'][14]['deaths'],
      discharged: json['data']['regional'][14]['discharged'],
      loc: json['data']['regional'][14]['loc'],
    );
  }
}