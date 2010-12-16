use strict;
use warnings;
use Test::Requires 'Data::MessagePack';
use Data::Encoder::Data::MessagePack;
use Test::More;

subtest 'simple' => sub {
    my $encoder = Data::Encoder::Data::MessagePack->new;
    my $data = $encoder->encode(['foo']);
    is $data, Data::MessagePack->pack(['foo']);
    is_deeply $encoder->decode($data), ['foo'];

    done_testing;
};

done_testing;
