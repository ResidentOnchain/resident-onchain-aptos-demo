module artist_demo::artist_demo {
    use std::signer;
    use std::string;
    use std::option;

    struct ArtistProfile has key, store {
        name: string::String,
        bio: option::Option<string::String>,
    }

    const E_ALREADY_REGISTERED: u64 = 0;

    public entry fun register(creator: &signer, name: string::String) {
        let addr = signer::address_of(creator);
        if (exists<ArtistProfile>(addr)) { abort E_ALREADY_REGISTERED };
        move_to(creator, ArtistProfile { name, bio: option::none<string::String>() });
    }

    public entry fun set_bio(creator: &signer, bio: string::String) acquires ArtistProfile {
        let addr = signer::address_of(creator);
        let profile = borrow_global_mut<ArtistProfile>(addr);
        profile.bio = option::some<string::String>(bio);
    }
}