import { StyleSheet } from "react-native";

export const typography = StyleSheet.create({
    titleHero: {
        fontSize: 32, 
        fontWeight: '900',
        letterSpacing: 1,
    },
    titleSection: {
        fontSize: 26, 
        fontWeight: '800',
        letterSpacing: 0.5,
    },
    subtitle: {
        fontSize: 16,
        fontWeight: '600',
    },
    body: {
        fontSize: 14,
        lineHeight: 22,
    },
    caption: {
        fontSize: 12,
    }
});