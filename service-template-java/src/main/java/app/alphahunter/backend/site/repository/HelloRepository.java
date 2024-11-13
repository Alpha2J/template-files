package app.alphahunter.backend.site.repository;

import app.alphahunter.backend.site.entity.HelloEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HelloRepository extends JpaRepository<HelloEntity, Long> {
}
