#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, unsigned char, unsigned int);
extern signed short (*v2) (signed short, unsigned char, unsigned int);
extern signed int v3 (unsigned int, signed char);
extern signed int (*v4) (unsigned int, signed char);
unsigned char v5 (signed char, unsigned short, signed short);
unsigned char (*v6) (signed char, unsigned short, signed short) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (signed short, unsigned short);
extern unsigned int (*v10) (signed short, unsigned short);
signed short v11 (unsigned char, unsigned int, signed short, signed short);
signed short (*v12) (unsigned char, unsigned int, signed short, signed short) = v11;
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
signed char v17 (signed short, signed char, signed short);
signed char (*v18) (signed short, signed char, signed short) = v17;
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern signed int v21 (unsigned char, signed int, unsigned short, unsigned int);
extern signed int (*v22) (unsigned char, signed int, unsigned short, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (signed short, unsigned char, unsigned char, unsigned int);
extern void (*v28) (signed short, unsigned char, unsigned char, unsigned int);
extern void v29 (signed char, signed short, signed short);
extern void (*v30) (signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned short v32 = 4;
signed int v31 = -4;

unsigned int v19 (void)
{
{
for (;;) {
signed int v36 = -3;
unsigned short v35 = 0;
signed short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed short v37, signed char v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 3U;
signed int v41 = -3;
signed short v40 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v43, unsigned int v44, signed short v45, signed short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 5;
unsigned char v48 = 7;
unsigned int v47 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed char v50, unsigned short v51, signed short v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 1U;
signed short v54 = 1;
signed short v53 = -4;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v56;
signed int v57;
unsigned short v58;
unsigned int v59;
signed int v60;
v56 = 4 + 0;
v57 = 1 + -4;
v58 = 0 + 3;
v59 = 3U - 0U;
v60 = v21 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 7: 
{
unsigned char v61;
signed int v62;
unsigned short v63;
unsigned int v64;
signed int v65;
v61 = 5 + 1;
v62 = 0 + -2;
v63 = 3 + 7;
v64 = v55 - 0U;
v65 = v21 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v68;
unsigned char v69;
unsigned int v70;
signed short v71;
v68 = -2 + -4;
v69 = 3 + 5;
v70 = 7U + 6U;
v71 = v1 (v68, v69, v70);
history[history_index++] = (int)v71;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
