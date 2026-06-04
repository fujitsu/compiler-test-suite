#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, signed char, unsigned short);
extern unsigned char (*v2) (unsigned short, signed char, signed char, unsigned short);
extern unsigned short v3 (unsigned int);
extern unsigned short (*v4) (unsigned int);
void v7 (signed int, signed int);
void (*v8) (signed int, signed int) = v7;
extern unsigned short v9 (signed short, unsigned char);
extern unsigned short (*v10) (signed short, unsigned char);
extern void v11 (unsigned char, unsigned short, signed short, signed short);
extern void (*v12) (unsigned char, unsigned short, signed short, signed short);
extern unsigned int v15 (unsigned short, unsigned int, signed short, signed char);
extern unsigned int (*v16) (unsigned short, unsigned int, signed short, signed char);
extern unsigned char v17 (signed char, unsigned int, signed short);
extern unsigned char (*v18) (signed char, unsigned int, signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
signed short v23 (signed char, signed short, unsigned char, signed char);
signed short (*v24) (signed char, signed short, unsigned char, signed char) = v23;
void v25 (unsigned int, signed int);
void (*v26) (unsigned int, signed int) = v25;
unsigned short v27 (unsigned char, unsigned short);
unsigned short (*v28) (unsigned char, unsigned short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = -1;
signed char v59 = -3;
unsigned char v58 = 4;

unsigned short v27 (unsigned char v61, unsigned short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 2;
signed short v64 = -1;
unsigned short v63 = 2;
trace++;
switch (trace)
{
case 5: 
return v62;
default: abort ();
}
}
}
}

void v25 (unsigned int v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 7;
signed int v69 = 1;
signed char v68 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed char v71, signed short v72, unsigned char v73, signed char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 5;
unsigned int v76 = 0U;
signed char v75 = -1;
trace++;
switch (trace)
{
case 9: 
return 1;
default: abort ();
}
}
}
}

void v7 (signed int v78, signed int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = 3;
unsigned int v81 = 6U;
unsigned int v80 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
