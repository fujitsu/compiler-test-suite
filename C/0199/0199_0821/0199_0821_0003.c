#include <stdlib.h>
extern signed char v1 (unsigned short, signed short);
extern signed char (*v2) (unsigned short, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
unsigned char v13 (unsigned char, signed short);
unsigned char (*v14) (unsigned char, signed short) = v13;
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern unsigned int v17 (signed short, unsigned int, signed int);
extern unsigned int (*v18) (signed short, unsigned int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed int, signed char);
extern signed char (*v22) (signed int, signed char);
extern unsigned int v23 (unsigned char, signed short, signed char, unsigned int);
extern unsigned int (*v24) (unsigned char, signed short, signed char, unsigned int);
extern signed char v25 (signed short, signed short, unsigned int, signed short);
extern signed char (*v26) (signed short, signed short, unsigned int, signed short);
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
extern signed char v29 (unsigned int, signed short, unsigned int);
extern signed char (*v30) (unsigned int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 7;
unsigned int v101 = 1U;
unsigned int v100 = 0U;

unsigned char v13 (unsigned char v103, signed short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 1;
signed char v106 = 3;
signed int v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed int v110 = -2;
unsigned int v109 = 3U;
signed char v108 = -1;
trace++;
switch (trace)
{
case 7: 
return 4;
case 11: 
return 5;
default: abort ();
}
}
}
}
