package com.example.Phamacy_Project.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfiguration {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // @Bean
    // public UserDetailsService userDetailsService(UserRepository userRepository) {
    // return new CustomUserDetailsService(userRepository);
    // }

    // @Bean
    // public AuthenticationSuccessHandler customSuccessHandler() {
    // return new CustomSuccessHandler();
    // }

    // @Bean
    // public DaoAuthenticationProvider authProvider(
    // PasswordEncoder passwordEncoder,
    // UserDetailsService userDetailsService) {
    // DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
    // authProvider.setUserDetailsService(userDetailsService);
    // authProvider.setPasswordEncoder(passwordEncoder);
    // return authProvider;
    // }

    // // @Bean
    // // public SpringSessionRememberMeServices rememberMeServices() {
    // // SpringSessionRememberMeServices rememberMeServices = new
    // // SpringSessionRememberMeServices();
    // // // optionally customize
    // // rememberMeServices.setAlwaysRemember(true);
    // // return rememberMeServices;
    // // }

    // @Bean
    // SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
    // http
    // .authorizeHttpRequests(authorize -> authorize
    // .dispatcherTypeMatchers(DispatcherType.FORWARD,
    // DispatcherType.INCLUDE)
    // .permitAll()
    // .requestMatchers("/", "/login", "/register", "/client/**", "/css/**",
    // "/js/**",
    // "/images/**")
    // .permitAll()

    // .requestMatchers("/admin/**").hasRole("ADMIN")

    // .anyRequest().permitAll())
    // // khi logout thì xóa luôn cookie
    // // .sessionManagement((sessionManagement) -> sessionManagement
    // // .sessionCreationPolicy(SessionCreationPolicy.ALWAYS)
    // // .invalidSessionUrl("/logout?expired")
    // // .maximumSessions(1)
    // // .maxSessionsPreventsLogin(false))
    // // .logout(logout ->
    // // logout.deleteCookies("JSESSIONID").invalidateHttpSession(true))

    // // cơ chế remember me

    // .formLogin(formLogin -> formLogin
    // .loginPage("/login")
    // .failureUrl("/login?error")

    // .successHandler(customSuccessHandler())
    // .permitAll())
    // // nếu mà Role_User mà vào trang admin thì nó đẩy ra trang này /accessDeny
    // .exceptionHandling(ex -> ex.accessDeniedPage("/accessDeny"));
    // return http.build();
    // }
}
