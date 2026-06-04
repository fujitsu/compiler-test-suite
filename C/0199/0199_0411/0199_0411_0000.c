#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern unsigned char v3 (unsigned short, signed int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed int, unsigned short);
extern signed char v5 (signed short, signed short, signed char);
extern signed char (*v6) (signed short, signed short, signed char);
extern unsigned short v7 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short (*v8) (unsigned int, signed char, unsigned short, unsigned short);
unsigned short v9 (unsigned int, signed short, signed short, signed int);
unsigned short (*v10) (unsigned int, signed short, signed short, signed int) = v9;
static unsigned char v11 (unsigned short, unsigned int, signed int, unsigned char);
static unsigned char (*v12) (unsigned short, unsigned int, signed int, unsigned char) = v11;
extern void v13 (signed short);
extern void (*v14) (signed short);
extern unsigned short v15 (signed char, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short);
unsigned int v17 (unsigned int);
unsigned int (*v18) (unsigned int) = v17;
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (signed char, signed int, unsigned short, unsigned char);
extern unsigned char (*v24) (signed char, signed int, unsigned short, unsigned char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern unsigned char v29 (signed int, unsigned short);
extern unsigned char (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned char v32 = 3;
unsigned char v31 = 2;

unsigned int v17 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 7;
unsigned char v36 = 0;
unsigned int v35 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v11 (unsigned short v38, unsigned int v39, signed int v40, unsigned char v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -1;
unsigned int v43 = 7U;
signed short v42 = 3;
trace++;
switch (trace)
{
case 7: 
return v41;
case 11: 
return v41;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v45, signed short v46, signed short v47, signed int v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 7;
unsigned char v50 = 3;
unsigned short v49 = 5;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v52;
signed int v53;
v52 = 4U + v45;
v53 = v25 (v52);
history[history_index++] = (int)v53;
}
break;
case 6: 
{
unsigned short v54;
unsigned int v55;
signed int v56;
unsigned char v57;
unsigned char v58;
v54 = v51 - 3;
v55 = 7U - 5U;
v56 = v48 - -4;
v57 = v50 - v50;
v58 = v11 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 8: 
{
unsigned int v59;
signed int v60;
v59 = v45 + v45;
v60 = v25 (v59);
history[history_index++] = (int)v60;
}
break;
case 10: 
{
unsigned short v61;
unsigned int v62;
signed int v63;
unsigned char v64;
unsigned char v65;
v61 = 4 - v51;
v62 = v45 + 2U;
v63 = -2 - -1;
v64 = 6 + 5;
v65 = v11 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 12: 
return v51;
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
unsigned char v68;
unsigned char v69;
v68 = v31 - 4;
v69 = v1 (v68);
history[history_index++] = (int)v69;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
