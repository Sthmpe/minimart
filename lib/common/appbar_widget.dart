import 'package:minimart/util/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MiniMartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MiniMartAppBar({
    super.key, 
    this.title,
    this.showBackArrow = false,
    this.leadingIcon, 
    this.actions, 
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      /// Ths padding affect the appbar of the home screen
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow 
        ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left))
        : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MiniMartDeviceUtils.getAppBarHeight());

}
