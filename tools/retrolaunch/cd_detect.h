#ifdef _WIN32
#include <io.h>
#else
#include <unistd.h>
#endif

int detect_cd_game(const char* cue_path, char* game_name, size_t max_len);
