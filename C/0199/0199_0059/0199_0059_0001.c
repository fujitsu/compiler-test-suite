#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
unsigned short v5 (signed short, unsigned char, signed short, signed short);
unsigned short (*v6) (signed short, unsigned char, signed short, signed short) = v5;
extern unsigned short v7 (unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned char);
unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int) = v11;
extern signed short v13 (signed short);
extern signed short (*v14) (signed short);
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
void v19 (unsigned char, unsigned char, signed short);
void (*v20) (unsigned char, unsigned char, signed short) = v19;
unsigned short v21 (unsigned short, unsigned int, signed char);
unsigned short (*v22) (unsigned short, unsigned int, signed char) = v21;
extern unsigned char v23 (unsigned int, unsigned char, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned int v27 (signed short, signed int);
extern unsigned int (*v28) (signed short, signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v47 = 7U;
unsigned int v46 = 6U;
unsigned char v45 = 1;

unsigned short v21 (unsigned short v48, unsigned int v49, signed char v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = 0;
signed short v52 = -2;
unsigned int v51 = 3U;
trace++;
switch (trace)
{
case 9: 
return 3;
default: abort ();
}
}
}
}

void v19 (unsigned char v54, unsigned char v55, signed short v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 5;
unsigned int v58 = 0U;
unsigned int v57 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v60, unsigned char v61, unsigned short v62, unsigned int v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 7;
unsigned char v65 = 0;
signed short v64 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v67, unsigned char v68, signed short v69, signed short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 0;
signed short v72 = -1;
signed short v71 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
