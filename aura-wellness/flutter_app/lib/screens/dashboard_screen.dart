import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/wellness_widgets.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Header
            SliverAppBar(
              floating: true,
              elevation: 0,
              backgroundColor: isDark
                  ? AppTheme.backgroundDark
                  : AppTheme.backgroundLight,
              title: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppTheme.primaryColor.withOpacity(0.2),
                        width: 2,
                      ),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://lh3.googleusercontent.com/aida-public/AB6AXuDJxi71LcPgyfi3Huwypvn9S_ljzqQiBdfKW5OZHH_4x2Ov-oeM8iXbTKE3R0qot58tT3MByoDEedTdvC0jHB95OIGH4rjr3LE7PT36oCvFuElXOpr-FZRXpSZoKVD3G76sCRuZQva2RSIbgMvq-cr-0dQCxexCgo-l9LGZMwqy7J963dSWvNWDOxlUuge8Xadrc1sGSwkKzUu8JO-rPy_YX0NSe8Y5vtqfMEKWZtVv6jlmcMiLFgMI5oE1ztbxtl9oR1LdZtclH51b',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Good morning,',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Text(
                          'Alex Rivera',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Center(
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isDark
                            ? AppTheme.slate800
                            : AppTheme.slate50,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications_none,
                          color: isDark ? Colors.grey[300] : AppTheme.slate600,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Main Content
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 120),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  // Wellness Score Card
                  WellnessScoreCard(
                    score: 85,
                    status: 'Excellent',
                    message: "You're doing better than 92% of users today!",
                    onViewInsights: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Insights view coming soon!'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  // Activity Section Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Activity',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Show all',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                color: AppTheme.primaryColor,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Activity Grid
                  GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 1,
                    children: [
                      ActivityCard(
                        title: 'Steps today',
                        value: '8,432',
                        icon: Icons.directions_walk,
                        backgroundColor: AppTheme.softMint,
                        iconBackgroundColor: Colors.white,
                        iconColor: AppTheme.emeraldColor,
                      ),
                      ActivityCard(
                        title: 'Last night',
                        value: '7h 20m',
                        icon: Icons.bedtime,
                        backgroundColor: AppTheme.softLavender,
                        iconBackgroundColor: Colors.white,
                        iconColor: AppTheme.purpleColor,
                      ),
                      ActivityCard(
                        title: 'Hydration',
                        value: '1.8L',
                        icon: Icons.water_drop,
                        backgroundColor: AppTheme.softBlue,
                        iconBackgroundColor: Colors.white,
                        iconColor: AppTheme.skyColor,
                      ),
                      ActivityCard(
                        title: 'Mindfulness',
                        value: '15m',
                        icon: Icons.self_improvement,
                        backgroundColor: AppTheme.softPeach,
                        iconBackgroundColor: Colors.white,
                        iconColor: AppTheme.orangeColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  // Suggestion Card
                  SuggestionCard(
                    title: 'Quick Tip',
                    message:
                        'Taking a 5-minute walk now will help you reach your daily goal.',
                    icon: Icons.lightbulb,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isDark
                  ? AppTheme.slate800.withOpacity(0.5)
                  : AppTheme.slate100,
              width: 1,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: BackdropFilter(
            filter: ColorFilter.mode(
              Colors.black.withOpacity(0),
              BlendMode.srcOver,
            ),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: isDark
                  ? AppTheme.backgroundDark.withOpacity(0.8)
                  : Colors.white.withOpacity(0.8),
              elevation: 0,
              selectedItemColor: AppTheme.primaryColor,
              unselectedItemColor: isDark
                  ? Colors.grey[600]
                  : AppTheme.slate400,
              selectedLabelStyle: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
              unselectedLabelStyle:
                  Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, size: 24),
                  activeIcon: Icon(Icons.home, size: 24),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_outlined, size: 24),
                  activeIcon: Icon(Icons.bar_chart, size: 24),
                  label: 'Stats',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(height: 24, child: Icon(Icons.add, size: 24)),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.import_contacts_outlined, size: 24),
                  activeIcon: Icon(Icons.import_contacts, size: 24),
                  label: 'Library',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline, size: 24),
                  activeIcon: Icon(Icons.person, size: 24),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: SizedBox(
          width: 56,
          height: 56,
          child: FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Add activity coming soon!'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            backgroundColor: AppTheme.primaryColor,
            foregroundColor: AppTheme.slate900,
            elevation: 8,
            child: const Icon(Icons.add, size: 28),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
