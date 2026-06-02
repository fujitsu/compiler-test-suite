#include <stdlib.h>
extern signed short v1 (signed short, signed char, signed short);
extern signed short (*v2) (signed short, signed char, signed short);
extern signed short v3 (unsigned int, unsigned char);
extern signed short (*v4) (unsigned int, unsigned char);
unsigned int v5 (unsigned int, unsigned int, unsigned int);
unsigned int (*v6) (unsigned int, unsigned int, unsigned int) = v5;
extern signed int v7 (signed short, signed int, signed char);
extern signed int (*v8) (signed short, signed int, signed char);
extern signed short v9 (unsigned char, unsigned char, signed int, signed int);
extern signed short (*v10) (unsigned char, unsigned char, signed int, signed int);
extern unsigned int v11 (unsigned int, unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, unsigned int, signed int);
signed short v13 (unsigned char, signed int, unsigned short);
signed short (*v14) (unsigned char, signed int, unsigned short) = v13;
extern signed int v15 (signed int, unsigned char);
extern signed int (*v16) (signed int, unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (unsigned int, signed char, signed char, signed short);
extern unsigned int (*v22) (unsigned int, signed char, signed char, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (signed int, unsigned char, unsigned short, unsigned char);
extern signed int (*v26) (signed int, unsigned char, unsigned short, unsigned char);
extern unsigned int v27 (signed short, unsigned short, unsigned short, signed short);
extern unsigned int (*v28) (signed short, unsigned short, unsigned short, signed short);
unsigned int v29 (unsigned char);
unsigned int (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v59 = 2;
signed char v58 = 0;
unsigned char v57 = 0;

unsigned int v29 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = -3;
unsigned int v62 = 4U;
signed char v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned char v64, signed int v65, unsigned short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 3;
signed char v68 = -2;
unsigned int v67 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v70, unsigned int v71, unsigned int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 4;
signed char v74 = 0;
unsigned int v73 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
