/// Author Alexi Coard

import 'dart:async';

import 'package:clickADev/src/localclass/config/config.dart' as Config;

class Game {

  ///   var initialization
  List<dynamic> buildingList = [];
  double _linesOfCode = 40.0;
  double _linesOfCodePerClick = 1.4;
  double _linesPerSeconds = 2.5;

  /// CONSTRUCTORS
  Game() {
    this.init();
    this.run();
  }
  ///
  /// METHODS

  /// Adds some lines of code to the existing amount
  void addLinesOfCode(double numberToAdd) {
    this._linesOfCode += numberToAdd;
  }

  /// Removes some lines of code to the existing amount
  void removeLinesOfCode(double numberToRemove) {
    this._linesOfCode -= numberToRemove;
  }

  /// Gets the current lines of code
  double getLinesOfCode() {
    return this._linesOfCode;
  }

  /// Sets the amount of lines of code
  void setLinesOfCode(double linesOfCode) {
    this._linesOfCode = linesOfCode;
  }

  /// Gets the current lines per seconds value
  double getLinesPerSeconds() {
    return this._linesPerSeconds;
  }

  /// Sets the current lines per seconds
  void setLinesPerSeconds(double linesPerSeconds) {
    this._linesPerSeconds = linesPerSeconds;
  }

  double get linesPerClick => this._linesOfCodePerClick;

  void set linesPerClick(double linesPerClick) => this._linesOfCodePerClick = linesPerClick;

  void addLinesFromClick() => this._linesOfCode += this.linesPerClick;


  /// MAIN LOGIC HERE
  /// digest will be called every tick
  /// So add currency here, check for ugrades and so on
  void digest() {
    this.addLinesOfCode(getLinesPerSeconds());
  }

  /// Initializes the game with various data
  void init() {
    //HERE WE WILL PUT THE MAIN LOGIC : load save from cookie and so on
  }

  /// Main game method runs the game digest cycle once every x seconds
  /// The tick duration is in a config file
  void run() {
    Timer.periodic(Config.tickDuration, (Timer t) => this.digest());
  }
}