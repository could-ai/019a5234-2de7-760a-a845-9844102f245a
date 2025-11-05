import 'package:flutter/material.dart';

class DisclaimerWidget extends StatelessWidget {
  const DisclaimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.warning_amber_rounded, color: Colors.red),
              const SizedBox(width: 8),
              Text(
                '🚨 تنبيه هام',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'تطبيق بدّل هو منصة تواصل فقط وغير مسؤول عن:\n'
            '• أي عمليات نصب أو احتيال\n'
            '• جودة السلع أو الخدمات المتبادلة\n'
            '• تنفيذ عمليات التبادل الفعلية\n'
            '• لقاءات المستخدمين أو تفاعلاتهم\n\n'
            'يجب على المستخدمين اتخاذ جميع الاحتياطات الأمنية عند المقابلات الشخصية.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.black87,
              height: 1.5,
              fontFamily: 'Tajawal',
            ),
          ),
        ],
      ),
    );
  }
}
