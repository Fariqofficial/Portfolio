import { View, Text} from 'react-native';
import { COLORS } from '../../constants/colors';
import { PORTFOLIO_DATA } from '../../constants/data';
import { usePortfolioStore } from "../../store/usePortfolioStore";
import { ProjectCard } from '../../components/ProjectCard';
import { typography } from '../../styles/typography';
import styles  from "./style";

export const PortfolioPage = () => {
  const { isDarkMode } = usePortfolioStore();
  const { projects } = PORTFOLIO_DATA;

  const titleColor = isDarkMode ? COLORS.textPrimary : COLORS.navPrimary;

  return (
    <View style={styles.container}>
      <Text style={[typography.titleSection, { color: titleColor, marginBottom: 8 }]}>
        Portfolio
      </Text>
      <Text style={[typography.caption, { color: COLORS.textMuted, marginBottom: 24 }]}>
        Portfolio of some relevant projects:
      </Text>

      <View style={styles.projectGrid}>
        {projects.map((project) => (
          <ProjectCard key={project.id} project={project} isDark={isDarkMode} />
        ))}
      </View>
    </View>
  );
};