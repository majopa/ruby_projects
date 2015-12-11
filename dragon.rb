# Author:                   Matthew Palomar
# Date:                     9/17/15

# Description:              An interesting dragon example.

# Example from Terminal:    'ruby dragon.rb'
/
                            Balerion is born.
                            You feed Balerion.
                            You toss Balerion up into the air.
                            He giggles, which singes your eyebrows.
                            You take Balerion for a walk.
                            You put Balerion to bed.
                            Balerion snores, filling the room with smoke...
                            Balerion snores, filling the room with smoke...
                            Balerion snores, filling the room with smoke...
                            Balerion slowly wakes up.
                            You rock Balerion gently.
                            He briefly dozes off...
                            ... but wakes when you stop.
                            You put Balerion to bed.
                            Balerion snores, filling the room with smoke...
                            Balerion wakes up suddenly!
                            Balerion's stomach grumbles..
                            You put Balerion to bed.
                            Balerion snores, filling the room with smoke...
                            Balerion wakes up suddenly!
                            Balerion's stomach grumbles..
                            You put Balerion to bed.
                            Balerion snores, filling the room with smoke...
                            Balerion wakes up suddenly!
                            Balerion's stomach grumbles..
                            Balerion does the potty dance.
                            You put Balerion to bed.
                            Balerion snores, filling the room with smoke...
                            Balerion wakes up suddenly!
                            Balerion is starving! In desperation, he ATE YOU!
/

# Dragon class / object
class Dragon
    # Initialization for a new instance of the Dragon class / Object
    def initialize name
        @name               = name      # Allows initialization with x = Dragon.new(name)
        @asleep             = false     # Spawn the dragon awake
        @stuff_in_belly     = 10        # Spawns full
        @stuff_in_intestine = 0         # Doesn't need to relieve himself

        puts(@name + " is born.")       # Display message of successful initialization
    end

    # Mutator Method for @stuff_in_belly
    def feed
        puts("You feed " + @name + ".")
        @stuff_in_belly = 10
        passage_of_time
    end

    # Mutator Method for @stuff_in_intestines
    def walk
        puts("You take " + @name + " for a walk.")
        @stuff_in_intestine = 0
        passage_of_time
    end

    # Method for put_to_bed
    def put_to_bed
        puts("You put " + @name + " to bed.")
        @asleep = true

        3.times do
            if @asleep
                puts(@name + " snores, filling the room with smoke...")
                passage_of_time
            end
        end
        if @asleep
            @asleep = false
            puts(@name + " slowly wakes up.")
        end
    end

    # Method for toss
    def toss
        puts("You toss " + @name + " up into the air.")
        puts("He giggles, which singes your eyebrows.")
        passage_of_time
    end

    # Method for rock
    def rock
        puts("You rock " + @name + " gently.")
        puts("He briefly dozes off...")
        @asleep = true
        passage_of_time

        if @asleep
            puts("... but wakes when you stop.")
            @asleep = false
        end
    end

    # Private Methods
    private

    def hungry?
        @stuff_in_belly <= 2
    end

    def poopy?
        @stuff_in_intestine >= 8
    end

    def passage_of_time
        # If Dragon has food, move to intestines
        if @stuff_in_belly > 0
            @stuff_in_belly     = @stuff_in_belly - 1
            @stuff_in_intestine = @stuff_in_intestine + 1
        # Dragon is starving
        else
            # Check if dragon is sleeping
            if @asleep
                puts(@name + " wakes up suddenly!")
            end
            puts(@name + " is starving! In desperation, he ATE YOU!")
            exit
        end

        # Check intestines
        if @stuff_in_intestine >= 10
            puts("Whoops! " + @name + " had an accident!")
            @stuff_in_intestine = 0
        end

        # Check if Dragon's hunger is true
        if hungry?
            # Check if dragon is sleeping
            if @asleep
                 puts(@name + " wakes up suddenly!")
                 @asleep = false
            end
            puts(@name + "\'s stomach grumbles..")
        end

        # Check Dragon's poop
        if poopy?
            # Check if dragon is sleeping
            if @asleep
                puts(@name + "wakes up suddenly!")
                @asleep = false
            end
            puts(@name + " does the potty dance.")
        end
    end
end

# Creation of new Dragon object instance
pet = Dragon.new "Balerion"

# Various calls to Methods that display output
pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
