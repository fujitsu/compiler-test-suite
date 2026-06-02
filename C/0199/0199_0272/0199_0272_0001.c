#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
extern unsigned short v3 (unsigned short, signed short, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, signed short, unsigned short, unsigned short);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed int v7 (unsigned int, unsigned int);
extern signed int (*v8) (unsigned int, unsigned int);
void v9 (signed char, signed short, signed short);
void (*v10) (signed char, signed short, signed short) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned char, signed char, unsigned short, signed short);
extern signed short (*v16) (unsigned char, signed char, unsigned short, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
signed int v25 (unsigned char);
signed int (*v26) (unsigned char) = v25;
void v27 (signed int, signed int, signed int, signed int);
void (*v28) (signed int, signed int, signed int, signed int) = v27;
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v58 = 3;
unsigned int v57 = 0U;
unsigned char v56 = 2;

void v27 (signed int v59, signed int v60, signed int v61, signed int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = 3;
unsigned short v64 = 2;
unsigned int v63 = 5U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed int v25 (unsigned char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 0;
signed char v68 = 1;
unsigned short v67 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v70, signed short v71, signed short v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 3;
unsigned char v74 = 1;
unsigned int v73 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
