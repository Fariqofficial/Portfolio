import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { COLORS } from '../constants/colors';

export const ContactInfo = ({ title, value, isDark = true }) => {
  return (
    <View style={styles.container}>
      <Text
        style={[
          styles.title,
          { color: isDark ? COLORS.textSecondary : COLORS.navPrimary },
        ]}
      >
        {title}
      </Text>
      <Text
        style={[
          styles.value,
          { color: isDark ? COLORS.textMuted : COLORS.navyLight },
        ]}
      >
        {value}
      </Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    alignItems: 'center',
    margin: 12,
    minWidth: 160,
  },
  title: {
    fontSize: 16,
    fontWeight: '700',
    marginBottom: 6,
  },
  value: {
    fontSize: 14,
    fontWeight: '500',
    textAlign: 'center',
  },
});