import 'package:flutter/material.dart';
import 'package:cozy_house_pi/state_util.dart';
import '../view/wishlist_view.dart';

class WishlistController extends State<WishlistView> implements MvcController {
  static late WishlistController instance;
  late WishlistView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
