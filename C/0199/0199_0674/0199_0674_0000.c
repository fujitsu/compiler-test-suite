#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned char, signed int, unsigned int, unsigned short);
static signed short (*v2) (unsigned char, signed int, unsigned int, unsigned short) = v1;
extern void v3 (unsigned short, signed int, signed short);
extern void (*v4) (unsigned short, signed int, signed short);
extern signed short v5 (signed short, unsigned short, signed short);
extern signed short (*v6) (signed short, unsigned short, signed short);
extern unsigned char v7 (signed int, signed char, unsigned int, unsigned int);
extern unsigned char (*v8) (signed int, signed char, unsigned int, unsigned int);
extern signed char v9 (unsigned char);
extern signed char (*v10) (unsigned char);
extern signed char v11 (signed short, signed char, signed int);
extern signed char (*v12) (signed short, signed char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed char, signed char, signed short, signed short);
extern unsigned char (*v16) (signed char, signed char, signed short, signed short);
signed int v17 (unsigned char);
signed int (*v18) (unsigned char) = v17;
extern signed char v19 (unsigned short);
extern signed char (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (unsigned short, signed short);
extern unsigned char (*v24) (unsigned short, signed short);
extern signed char v25 (unsigned int, signed int, signed int, signed int);
extern signed char (*v26) (unsigned int, signed int, signed int, signed int);
extern unsigned char v27 (unsigned short, signed short, signed char, unsigned int);
extern unsigned char (*v28) (unsigned short, signed short, signed char, unsigned int);
void v29 (signed char, unsigned short, unsigned short);
void (*v30) (signed char, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
unsigned short v32 = 2;
unsigned char v31 = 0;

void v29 (signed char v34, unsigned short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 1U;
signed int v38 = -3;
unsigned char v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 4;
unsigned int v42 = 4U;
signed char v41 = 0;
trace++;
switch (trace)
{
case 4: 
return -1;
case 8: 
return 0;
default: abort ();
}
}
}
}

static signed short v1 (unsigned char v44, signed int v45, unsigned int v46, unsigned short v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 5;
signed int v49 = -2;
signed char v48 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v51;
signed int v52;
signed int v53;
signed int v54;
signed char v55;
v51 = 5U - 2U;
v52 = 1 - v49;
v53 = -4 + v45;
v54 = v45 + 2;
v55 = v25 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 2: 
{
unsigned short v56;
signed char v57;
v56 = v47 - v47;
v57 = v19 (v56);
history[history_index++] = (int)v57;
}
break;
case 12: 
return -1;
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
unsigned char v60;
signed int v61;
unsigned int v62;
unsigned short v63;
signed short v64;
v60 = 1 - 6;
v61 = 3 + 1;
v62 = 1U - 7U;
v63 = 1 + 1;
v64 = v1 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
