import React from 'react';
import { View, Text, Image } from 'react-native';
import { COLORS } from '../../constants/colors';
import { PORTFOLIO_DATA } from '../../constants/data';
import { usePortfolioStore } from '../../store/usePortfolioStore';
import { TechBadge } from '../../components/TechBadge';
import { typography } from '../../styles/typography';
import styles from './style';

export const HomePage = () => {
  const { isDarkMode } = usePortfolioStore();
  const { profile, technologies } = PORTFOLIO_DATA;

  const textColorPrimary = isDarkMode ? COLORS.textPrimary : COLORS.lightTextPrimary;
  const textColorSub = isDarkMode ? COLORS.textSecondary : COLORS.lightTextSecondary;
  const textColorMuted = isDarkMode ? COLORS.textMuted : COLORS.lightTextMuted;

  return (
    <View style={styles.container}>
      {/* Header Profile and Profile Pict */}
      <View style={styles.headerWrapper}>
        <Image
          source={require('../../assets/images/img_profile.jpg')}
          style={styles.profileAvatar}
          resizeMode="cover"
        />

        <Text style={[typography.titleHero, { color: textColorPrimary }]}>
          {profile.name}
        </Text>
        <Text style={[typography.subtitle, { color: textColorSub, marginTop: 6 }]}>
          {profile.role} | {profile.location}
        </Text>
        <Text style={[typography.caption, { color: textColorMuted, marginTop: 6 }]}>
          {profile.age}
        </Text>
      </View>

      {/* Bio Text */}
      <Text style={[typography.body, styles.bio, { color: textColorSub }]}>
        {profile.bio}
      </Text>

      {/* Tech Stack Grid */}
      <View style={styles.techGrid}>
        {technologies.map((tech, index) => (
          <TechBadge
            key={index}
            name={typeof tech === 'string' ? tech : tech.name}
            icon={typeof tech === 'object' ? tech.icon : null}
            isDark={isDarkMode}
          />
        ))}
      </View>
    </View>
  );
};