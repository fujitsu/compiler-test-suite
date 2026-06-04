#include <stdlib.h>
extern signed short v3 (signed int, unsigned short, signed char, unsigned int);
extern signed short (*v4) (signed int, unsigned short, signed char, unsigned int);
unsigned char v5 (signed short, unsigned int, signed short, unsigned char);
unsigned char (*v6) (signed short, unsigned int, signed short, unsigned char) = v5;
extern unsigned char v7 (signed short);
extern unsigned char (*v8) (signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (signed char, signed int);
extern unsigned char (*v12) (signed char, signed int);
extern unsigned short v13 (signed short, unsigned int, signed int, signed int);
extern unsigned short (*v14) (signed short, unsigned int, signed int, signed int);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern signed int v17 (unsigned char, unsigned char);
extern signed int (*v18) (unsigned char, unsigned char);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed short v27 (unsigned char, unsigned int, unsigned int, signed short);
extern signed short (*v28) (unsigned char, unsigned int, unsigned int, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 0;
signed int v104 = 2;
unsigned char v103 = 6;

unsigned short v15 (void)
{
{
for (;;) {
unsigned char v108 = 3;
unsigned short v107 = 2;
unsigned char v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v109, unsigned int v110, signed short v111, unsigned char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 0U;
unsigned char v114 = 6;
unsigned int v113 = 3U;
trace++;
switch (trace)
{
case 1: 
return v112;
default: abort ();
}
}
}
}
