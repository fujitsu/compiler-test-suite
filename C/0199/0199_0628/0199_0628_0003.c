#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern unsigned short v5 (unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned short, unsigned char);
extern signed short v7 (unsigned short, unsigned int, unsigned int, signed int);
extern signed short (*v8) (unsigned short, unsigned int, unsigned int, signed int);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern void v11 (signed int, signed int, unsigned short, unsigned char);
extern void (*v12) (signed int, signed int, unsigned short, unsigned char);
extern signed char v13 (signed int, signed char, unsigned short);
extern signed char (*v14) (signed int, signed char, unsigned short);
unsigned int v15 (unsigned char, signed short);
unsigned int (*v16) (unsigned char, signed short) = v15;
signed int v17 (unsigned short, unsigned char, signed int, unsigned int);
signed int (*v18) (unsigned short, unsigned char, signed int, unsigned int) = v17;
extern signed int v19 (unsigned char, unsigned int, unsigned int, signed short);
extern signed int (*v20) (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned int v23 (unsigned int, signed short, unsigned int, unsigned int);
extern unsigned int (*v24) (unsigned int, signed short, unsigned int, unsigned int);
extern void v25 (unsigned int, unsigned int);
extern void (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short, signed char, signed char, unsigned short);
extern void (*v30) (signed short, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = -1;
unsigned char v103 = 6;
unsigned short v102 = 3;

signed int v17 (unsigned short v105, unsigned char v106, signed int v107, unsigned int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 3U;
signed char v110 = 1;
signed char v109 = 3;
trace++;
switch (trace)
{
case 10: 
return v107;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v112, signed short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = -1;
signed short v115 = 2;
unsigned char v114 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
