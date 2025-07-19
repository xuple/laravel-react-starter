# Contributing to Laravel React Starter Kit

Thank you for considering contributing to the Laravel React Starter Kit! We welcome contributions from the community.

## How to Contribute

### Reporting Issues
- Use the GitHub issue tracker
- Provide clear, detailed information about the problem
- Include steps to reproduce the issue
- Mention your environment (OS, Node.js version, etc.)

### Suggesting Features
- Open a GitHub issue with the "enhancement" label
- Describe the feature and its benefits
- Consider if it aligns with the starter kit's goals

### Submitting Code Changes
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Add tests if applicable
5. Ensure all tests pass (`npm test` and `php artisan test`)
6. Commit your changes (`git commit -m 'Add amazing feature'`)
7. Push to the branch (`git push origin feature/amazing-feature`)
8. Open a Pull Request

## Development Setup

1. Clone your fork
2. Install dependencies: `composer install && npm install`
3. Copy `.env.example` to `.env` and configure
4. Run migrations: `php artisan migrate`
5. Start development: `npm run dev`

## Code Standards

- Follow Laravel coding standards
- Use TypeScript for all JavaScript/React code
- Ensure ESLint passes: `npm run lint`
- Ensure TypeScript compilation passes: `npm run types`
- Write tests for new features

## Questions?

If you have questions about contributing, feel free to open an issue or discussion.

---

*This contributing guide is based on Laravel's contribution guidelines. For more detailed information, see the [Laravel documentation](https://laravel.com/docs/contributions).* 