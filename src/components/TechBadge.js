import React from 'react';
import { Image, StyleSheet, Text, View } from "react-native";
import { COLORS } from "../constants/colors";


export const TechBadge = ({ name, icon, isDark}) => (
    <View style={[styles.badge, { backgroundColor: isDark ? COLORS.navyLight : COLORS.beigeCard }]}>

    {icon ? (
      <Image
        source={typeof icon === 'string' ? { uri: icon } : icon}
        style={styles.icon}
        resizeMode="contain"
      />
    ) : null}

    <Text style={[styles.text, { color: isDark ? COLORS.textPrimary : COLORS.lightTextPrimary }]}>
      {name}
    </Text>
  </View>
);

const styles = StyleSheet.create({
  badge: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 8,
    margin: 6,
    borderWidth: 1,
  },
  icon: {
    width: 25,
    height: 25,
    marginRight: 8,
  },
  text: {
    fontWeight: '600',
    fontSize: 14,
  },
});