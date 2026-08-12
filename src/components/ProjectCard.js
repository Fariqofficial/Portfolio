import React from 'react';
import { Image, StyleSheet, Text, TouchableOpacity, View, Linking } from "react-native";
import { COLORS } from "../constants/colors";

const resolveImageSource = (source) => {
  if (typeof source === 'string') {
    return { uri: source };
  }
  if (typeof source === 'object' && source !== null && source.default) {
    return source.default;
  }
  return source;
};

export const ProjectCard = ({ project, isDark }) => (
  <View
    style={[
      styles.card,
      {
        backgroundColor: isDark ? COLORS.navyLight : COLORS.lightCardBg,
        borderColor: isDark ? COLORS.borderDark : COLORS.borderLight,
      },
    ]}
  >
    <Text style={[styles.projectType, { color: isDark ? COLORS.textSecondary : COLORS.lightTextSecondary }]}>
      {project.type}
    </Text>

    <Text
      style={[
        styles.title,
        { color: isDark ? COLORS.textPrimary : COLORS.lightTextPrimary },
      ]}
    >
      {project.title}
    </Text>

    <Text style={[styles.desc, { color: isDark ? COLORS.textMuted : COLORS.lightTextMuted }]}>
      {project.description}
    </Text>

    <Text style={[styles.techHeader, {
      color: isDark ? COLORS.textSecondary : COLORS.lightTextSecondary 
    }]}>Tech Stack</Text>

    <View style={styles.techRow}>
      {project.tech && project.tech.map((t, idx) => (
        <Image
          key={idx}
          source={resolveImageSource(t)}
          style={styles.icons}
          resizeMode="contain"
        />
      ))}
    </View>

    <TouchableOpacity
      activeOpacity={0.8}
      onPress={() => project.link && Linking.openURL(project.link)}
      style={[
        styles.btn,
        { backgroundColor: isDark ? COLORS.borderDark : COLORS.navPrimary },
      ]}
    >
      <Text style={styles.btnText}>{project.action || project.actionText || 'VIEW PROJECT'}</Text>
    </TouchableOpacity>
  </View>
);

const styles = StyleSheet.create({
  card: {
    width: 320,
    borderRadius: 12,
    padding: 24,
    margin: 12,
    alignItems: 'center',
    justifyContent: 'space-between',
    borderWidth: 1,
    elevation: 2,
  },
  projectType: {
    fontWeight: '700',
    fontSize: 13,
    marginBottom: 8,
  },
  title: {
    fontSize: 22,
    fontWeight: '800',
    marginBottom: 12,
    textAlign: 'center',
  },
  desc: {
    fontSize: 13,
    textAlign: 'center',
    lineHeight: 20,
    marginBottom: 16,
  },
  techHeader: {
    fontSize: 12,
    fontWeight: '700',
    marginBottom: 8,
  },
  techRow: {
    flexDirection: 'row',
    marginBottom: 20,
    flexWrap: 'wrap',
    justifyContent: 'center',
    alignItems: 'center',
  },
  icons: {
    width: 28,
    height: 28,
    marginHorizontal: 6,
    marginVertical: 4,
  },
  btn: {
    width: '100%',
    paddingVertical: 12,
    borderRadius: 8,
    alignItems: 'center',
  },
  btnText: {
    color: '#FFFFFF',
    fontWeight: '700',
    fontSize: 12,
  },
});