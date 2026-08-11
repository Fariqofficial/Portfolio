import React from 'react';
import { SafeAreaView, StatusBar, StyleSheet } from 'react-native';
import { PortfolioProvider, usePortfolioStore } from './src/store/usePortfolioStore';
import { MainLayoutScreen } from './src/pages/MainLayoutPage';
import { COLORS } from './src/constants/colors';

const AppContent = () => {
  const { isDarkMode } = usePortfolioStore();

  const backgroundColor = isDarkMode ? COLORS.navPrimary : COLORS.borderLight;

  return (
    <SafeAreaView style={[styles.container, { backgroundColor }]}>
      <StatusBar
        barStyle={isDarkMode ? 'light-content' : 'dark-content'}
        backgroundColor={backgroundColor}
      />
      <MainLayoutScreen />
    </SafeAreaView>
  );
};

export default function App(): React.JSX.Element {
  return (
    <PortfolioProvider>
      <AppContent />
    </PortfolioProvider>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});