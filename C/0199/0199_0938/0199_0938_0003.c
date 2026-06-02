#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed char v3 (signed short, signed short);
extern signed char (*v4) (signed short, signed short);
extern unsigned short v5 (unsigned int, unsigned short, signed short);
extern unsigned short (*v6) (unsigned int, unsigned short, signed short);
extern unsigned int v7 (signed char, signed int, signed int, unsigned int);
extern unsigned int (*v8) (signed char, signed int, signed int, unsigned int);
extern unsigned int v9 (unsigned int, unsigned char, signed int, unsigned char);
extern unsigned int (*v10) (unsigned int, unsigned char, signed int, unsigned char);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (signed short, signed char);
extern unsigned int (*v14) (signed short, signed char);
extern unsigned short v15 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v16) (unsigned char, unsigned char, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern unsigned char v23 (unsigned short, unsigned char, signed char);
extern unsigned char (*v24) (unsigned short, unsigned char, signed char);
extern signed short v25 (signed short, unsigned int, unsigned short);
extern signed short (*v26) (signed short, unsigned int, unsigned short);
signed int v27 (signed char, unsigned short, unsigned short, signed char);
signed int (*v28) (signed char, unsigned short, unsigned short, signed char) = v27;
signed int v29 (unsigned int, unsigned int, unsigned int, signed char);
signed int (*v30) (unsigned int, unsigned int, unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 7U;
unsigned char v91 = 1;
unsigned int v90 = 3U;

signed int v29 (unsigned int v93, unsigned int v94, unsigned int v95, signed char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 7;
signed short v98 = 2;
signed int v97 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (signed char v100, unsigned short v101, unsigned short v102, signed char v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -4;
signed int v105 = -2;
signed short v104 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
