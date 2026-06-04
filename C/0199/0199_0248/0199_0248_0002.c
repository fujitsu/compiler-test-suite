#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v3 (unsigned short, signed char, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned short, signed char, unsigned char, unsigned int);
signed short v5 (signed short, signed char, signed int, unsigned char);
signed short (*v6) (signed short, signed char, signed int, unsigned char) = v5;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
unsigned short v15 (unsigned int, unsigned char, signed int);
unsigned short (*v16) (unsigned int, unsigned char, signed int) = v15;
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
unsigned char v19 (signed short);
unsigned char (*v20) (signed short) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern signed short v27 (unsigned int, unsigned char);
extern signed short (*v28) (unsigned int, unsigned char);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v61 = -3;
unsigned int v60 = 7U;
signed short v59 = -1;

unsigned char v19 (signed short v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 7U;
signed short v64 = -2;
signed char v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v66, unsigned char v67, signed int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 0;
signed char v70 = 3;
signed short v69 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v72, signed char v73, signed int v74, unsigned char v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 7;
unsigned char v77 = 3;
signed int v76 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
