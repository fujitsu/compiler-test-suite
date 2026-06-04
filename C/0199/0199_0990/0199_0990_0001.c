#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
signed short v5 (signed char);
signed short (*v6) (signed char) = v5;
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
signed char v9 (signed short);
signed char (*v10) (signed short) = v9;
extern signed int v11 (unsigned char, signed char, signed char, signed short);
extern signed int (*v12) (unsigned char, signed char, signed char, signed short);
extern unsigned int v13 (signed int, signed int);
extern unsigned int (*v14) (signed int, signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
unsigned short v17 (signed short, unsigned char);
unsigned short (*v18) (signed short, unsigned char) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (unsigned short, unsigned int);
extern signed int (*v22) (unsigned short, unsigned int);
extern signed int v25 (signed short, unsigned char);
extern signed int (*v26) (signed short, unsigned char);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed int v29 (signed int, signed short, unsigned short, unsigned char);
extern signed int (*v30) (signed int, signed short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = 0;
unsigned int v51 = 3U;
unsigned char v50 = 6;

unsigned short v17 (signed short v53, unsigned char v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 4;
unsigned int v56 = 5U;
signed short v55 = 2;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

signed char v9 (signed short v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 4;
unsigned int v60 = 2U;
signed int v59 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed char v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 7U;
unsigned char v64 = 6;
signed int v63 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
