/// Author Alexi Coard

import 'dart:async';

import '../config/config.dart' as config;

class Game {

  ///   var initialization
  List<dynamic> buildingList = [];
  double _linesOfCode = 40.0;
  double _linesPerSeconds = 2.5;

  /// CONSTRUCTORS
  Game() {
    this.init();
    this.run();
  }
  ///
  /// METHODS

  /// Adds some lines of code to the existing amount
  addLinesOfCode(double numberToAdd) {
    this._linesOfCode += numberToAdd;
  }

  /// Removes some lines of code to the existing amount
  removeLinesOfCode(double numberToRemove) {
    this._linesOfCode -= numberToRemove;
  }

  /// Gets the current lines of code
  getLinesOfCode() {
    return this._linesOfCode;
  }

  /// Sets the amount of lines of code
  setLinesOfCode(double linesOfCode) {
    this._linesOfCode = linesOfCode;
  }

  /// Gets the current lines per seconds value
  getLinesPerSeconds() {
    return this._linesPerSeconds;
  }

  /// Sets the current lines per seconds
  setLinesPerSeconds(double linesPerSeconds) {
    this._linesPerSeconds = linesPerSeconds;
  }

  /// MAIN LOGIC HERE
  /// digest will be called every tick
  /// So add currency here, check for ugrades and so on
  digest() {
    this.addLinesOfCode(getLinesPerSeconds());
  }

  /// Initializes the game with various data
  init() {
    //HERE WE WILL PUT THE MAIN LOGIC : load save from cookie and so on
  }

  /// Main game method runs the game digest cycle once every x seconds
  /// The tick duration is in a config file
  run() {
    new Timer.periodic(config.tickDuration, (Timer t) => this.digest());
  }
}