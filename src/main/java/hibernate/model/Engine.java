package hibernate.model;


import java.io.Serializable;
import java.util.List;
import java.util.Set;
import lombok.*;



@NoArgsConstructor
@EqualsAndHashCode(exclude = "cars")
public class Engine {

    @Getter
    @Setter
    private int id;

    @Getter
    @Setter
    private String name;

    @Getter
    @Setter
    private int power;

    @Getter
    @Setter
    private Set<Car> cars;
}
