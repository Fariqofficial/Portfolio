import { StyleSheet } from "react-native";

export const commonstyles = StyleSheet.create({
    container: {
        flex: 1,
    },
    scrollContent: {
        paddingHorizontal: 24,
        paddingVertical: 32,
        alignItems: 'center',
    },
    section: {
        width: '100%',
        maxWidth: 1000,
        alignItems: 'center',
        marginVertical: 24,
    },
    gridRow: {
        flexDirection: 'row',
        flexWrap: 'wrap',
        justifyContent: 'center',
        width: '100%',
    }
});