#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
unsigned short v5 (signed short, signed char, unsigned char);
unsigned short (*v6) (signed short, signed char, unsigned char) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (signed int, unsigned short, unsigned int, signed short);
extern unsigned char (*v10) (signed int, unsigned short, unsigned int, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned char v13 (signed char, unsigned int, unsigned short, signed short);
unsigned char (*v14) (signed char, unsigned int, unsigned short, signed short) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (signed short, signed int, unsigned char, unsigned int);
extern unsigned char (*v22) (signed short, signed int, unsigned char, unsigned int);
extern unsigned short v23 (unsigned char, signed short);
extern unsigned short (*v24) (unsigned char, signed short);
extern unsigned int v25 (unsigned char, signed short, unsigned char, signed int);
extern unsigned int (*v26) (unsigned char, signed short, unsigned char, signed int);
signed char v27 (unsigned short, unsigned int, unsigned short, signed short);
signed char (*v28) (unsigned short, unsigned int, unsigned short, signed short) = v27;
extern unsigned char v29 (unsigned int, unsigned char, signed char);
extern unsigned char (*v30) (unsigned int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v102 = -3;
unsigned short v101 = 6;
unsigned short v100 = 0;

signed char v27 (unsigned short v103, unsigned int v104, unsigned short v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 5;
signed char v108 = 2;
signed int v107 = -2;
trace++;
switch (trace)
{
case 4: 
return v108;
case 8: 
return 3;
default: abort ();
}
}
}
}

unsigned char v13 (signed char v110, unsigned int v111, unsigned short v112, signed short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -4;
unsigned int v115 = 2U;
unsigned int v114 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v117, signed char v118, unsigned char v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 0;
unsigned char v121 = 3;
signed char v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
