#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char);
extern unsigned int (*v2) (unsigned char, unsigned char);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern unsigned short v5 (signed int, unsigned char, signed int);
extern unsigned short (*v6) (signed int, unsigned char, signed int);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern unsigned short v9 (signed int, signed short, signed int);
extern unsigned short (*v10) (signed int, signed short, signed int);
extern signed char v11 (unsigned int, unsigned char);
extern signed char (*v12) (unsigned int, unsigned char);
extern unsigned short v13 (unsigned int, unsigned short);
extern unsigned short (*v14) (unsigned int, unsigned short);
signed int v15 (signed int, signed int, unsigned char);
signed int (*v16) (signed int, signed int, unsigned char) = v15;
unsigned int v17 (unsigned char, unsigned short, signed int, unsigned int);
unsigned int (*v18) (unsigned char, unsigned short, signed int, unsigned int) = v17;
signed short v21 (signed short);
signed short (*v22) (signed short) = v21;
extern unsigned int v23 (signed short, signed int, unsigned char);
extern unsigned int (*v24) (signed short, signed int, unsigned char);
extern signed int v25 (unsigned short, unsigned int, signed int);
extern signed int (*v26) (unsigned short, unsigned int, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (signed short, signed char, signed char, signed short);
extern signed char (*v30) (signed short, signed char, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v45 = 3;
unsigned int v44 = 6U;
unsigned int v43 = 6U;

signed short v21 (signed short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 1;
unsigned char v48 = 6;
unsigned char v47 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v50, unsigned short v51, signed int v52, unsigned int v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = 2;
signed short v55 = -2;
signed int v54 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v57, signed int v58, unsigned char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 4;
unsigned char v61 = 7;
signed short v60 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
