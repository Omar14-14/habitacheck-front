import 'package:flutter/material.dart';

const _blue = Color(0xFF2D527C);

class WelcomeActionButton extends StatelessWidget {
  const WelcomeActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.height,
    this.primary = false,
    this.scale = 1,
  });

  final String label;
  final VoidCallback onPressed;
  final double height;
  final bool primary;
  final double scale;

  @override
  Widget build(BuildContext context) {
    final textStyle =
        (Theme.of(context).textTheme.labelLarge ?? const TextStyle()).copyWith(
          fontSize: (primary ? 25 : 22) * scale,
          fontWeight: primary ? FontWeight.w500 : FontWeight.w400,
          letterSpacing: -.3,
        );

    if (!primary) {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          minimumSize: Size(0, height),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          foregroundColor: _blue,
          backgroundColor: const Color(0xB3F7F5F1),
          side: const BorderSide(color: _blue, width: 1.2),
          shape: const StadiumBorder(),
          textStyle: textStyle,
        ),
        child: Text(label, textAlign: TextAlign.center),
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: const LinearGradient(
          colors: [Color(0xFF355C85), Color(0xFF24466D)],
        ),
        boxShadow: [
          BoxShadow(
            color: _blue.withValues(alpha: .17),
            blurRadius: 22,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(0, height),
          padding: EdgeInsets.symmetric(horizontal: 15 * scale, vertical: 12),
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          textStyle: textStyle,
        ),
        child: Row(
          children: [
            SizedBox(width: 30 * scale),
            Expanded(child: Text(label, textAlign: TextAlign.center)),
            Container(
              width: 48 * scale,
              height: 48 * scale,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF456C99),
              ),
              child: Icon(Icons.arrow_forward_rounded, size: 30 * scale),
            ),
          ],
        ),
      ),
    );
  }
}
