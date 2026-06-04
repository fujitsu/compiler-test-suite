#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
void v3 (void);
void (*v4) (void) = v3;
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (unsigned int, unsigned short, signed int);
extern signed char (*v10) (unsigned int, unsigned short, signed int);
extern unsigned int v11 (signed int, signed int, signed short, unsigned short);
extern unsigned int (*v12) (signed int, signed int, signed short, unsigned short);
extern unsigned char v13 (signed int, unsigned char, signed short);
extern unsigned char (*v14) (signed int, unsigned char, signed short);
extern signed short v17 (signed char, signed char, unsigned short);
extern signed short (*v18) (signed char, signed char, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
extern void v25 (signed short, signed short, signed int, signed int);
extern void (*v26) (signed short, signed short, signed int, signed int);
unsigned char v27 (unsigned int, unsigned short, unsigned int);
unsigned char (*v28) (unsigned int, unsigned short, unsigned int) = v27;
signed char v29 (unsigned char, unsigned char, unsigned char, unsigned char);
signed char (*v30) (unsigned char, unsigned char, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned int v32 = 3U;
unsigned int v31 = 6U;

signed char v29 (unsigned char v34, unsigned char v35, unsigned char v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 2;
signed int v39 = -3;
signed short v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (unsigned int v41, unsigned short v42, unsigned int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 1;
unsigned int v45 = 1U;
unsigned char v44 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed short v49 = -1;
unsigned short v48 = 0;
unsigned int v47 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
signed short v52 = 3;
signed short v51 = -3;
unsigned char v50 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v53;
signed char v54;
unsigned short v55;
signed short v56;
v53 = 2 - -2;
v54 = -4 + -2;
v55 = 3 - 1;
v56 = v17 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 2: 
{
unsigned char v57;
unsigned short v58;
unsigned int v59;
v57 = 5 - v50;
v58 = 6 + 2;
v59 = v23 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 4: 
return -4;
case 5: 
{
unsigned int v60;
unsigned short v61;
signed int v62;
signed char v63;
v60 = 7U + 0U;
v61 = 5 + 1;
v62 = -4 - -4;
v63 = v9 (v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 9: 
{
unsigned int v64;
v64 = v7 ();
history[history_index++] = (int)v64;
}
break;
case 13: 
return -2;
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
signed char v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
