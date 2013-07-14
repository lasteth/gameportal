package com.iptv.gameportal.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import com.iptv.gameportal.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
