import 'package:flutter/material.dart';

class NeuToast extends StatelessWidget {
  final String message;
  final bool isSuccess;
  final bool showIcon;

  const NeuToast({
    Key? key,
    required this.message,
    this.isSuccess = true,
    this.showIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          // 외부 그림자 (바깥쪽 음영)
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          // 내부 하이라이트 (안쪽 밝은 부분)
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showIcon) ...[
            Icon(
              isSuccess ? Icons.check_circle : Icons.error,
              color: isSuccess ? Colors.green : Colors.red,
            ),
            const SizedBox(width: 12.0),
          ],
          Text(
            message,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  // 아이콘이 있는 토스트를 보여주는 메서드
  static void showWithIcon(BuildContext context, String message,
      {bool isSuccess = true}) {
    _showToast(context, message, isSuccess: isSuccess, showIcon: true);
  }

  // 아이콘이 없는 토스트를 보여주는 메서드
  static void show(BuildContext context, String message,
      {bool isSuccess = true}) {
    _showToast(context, message, isSuccess: isSuccess, showIcon: false);
  }

  // 내부적으로 사용되는 토스트 표시 메서드
  static void _showToast(BuildContext context, String message,
      {bool isSuccess = true, bool showIcon = true}) {
    OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: NeuToast(
              message: message,
              isSuccess: isSuccess,
              showIcon: showIcon,
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry);

    // 3초 후에 토스트 제거
    Future.delayed(const Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }
}
