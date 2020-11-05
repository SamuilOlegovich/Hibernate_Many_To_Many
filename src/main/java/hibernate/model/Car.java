package hibernate.model;


import java.util.Set;
import lombok.*;



@NoArgsConstructor
@EqualsAndHashCode(exclude = "engines")
public class Car {

    @Getter
    @Setter
    private int id;

    @Getter
    @Setter
    private String mark;

    @Getter
    @Setter
    private Integer cost;

    @Getter
    @Setter
    private Set<Engine> engines;
}
