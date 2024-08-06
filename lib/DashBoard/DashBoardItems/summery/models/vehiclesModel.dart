import 'package:flutter/material.dart';

class VehiclesModel {
  final String vehicleImage;
  final String vehicleLicense;
  final int vehicleRanking;
  final bool upArrow;
  final String vehicleName;

  const VehiclesModel(
      {required this.vehicleImage,
      required this.vehicleName,
      required this.upArrow,
      required this.vehicleLicense,
      required this.vehicleRanking});
}

List<VehiclesModel> vehicles = [
  VehiclesModel(
      vehicleName: 'Vehicle 1',
      vehicleImage: 'images/vehicle.png',
      vehicleLicense: 'BZ 123 HBGP',
      vehicleRanking: 1,
      upArrow: true),
  VehiclesModel(
      vehicleName: 'Vehicle 6',
      vehicleImage: 'images/vehicle.png',
      vehicleLicense: 'BZ 123 HBGP',
      vehicleRanking: 6,
      upArrow: true),
  VehiclesModel(
      vehicleName: 'Vehicle 3',
      vehicleImage: 'images/vehicle.png',
      vehicleLicense: 'BZ 123 HBGP',
      vehicleRanking: 3,
      upArrow: false),
  VehiclesModel(
      vehicleName: 'Vehicle 5',
      vehicleImage: 'images/vehicle.png',
      vehicleLicense: 'BZ 123 HBGP',
      vehicleRanking: 5,
      upArrow: true),
  VehiclesModel(
      vehicleName: 'Vehicle 2',
      vehicleImage: 'images/vehicle.png',
      vehicleLicense: 'BZ 123 HBGP',
      vehicleRanking: 2,
      upArrow: true),
  VehiclesModel(
      vehicleName: 'Vehicle 4',
      vehicleImage: 'images/vehicle.png',
      vehicleLicense: 'BZ 123 HBGP',
      vehicleRanking: 4,
      upArrow: false),
];
